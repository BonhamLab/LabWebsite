using Literate
using TimeZones
using Git

@reexport using Dates
import Hyperscript as HS


node = HS.m

# March 5, 2019
date_format(d) = Dates.format(d, "U d, yyyy")



function hfun_list_people()
    return string(
        node("div", class="cards-row",
        (
        node("div", class="card-column",
            node("div", class="card-body", 
                node("img", src=p.portrait),
                node("div", class="card-container", 
                    node("h2", node("a", href=p.href, p.name)),
                    node("div", class="card-title", p.title),
                    node("div", class="card-vitae", p.vitae),
                    node("div", class="card-email", node("a", href="mailto:$(p.email)", p.email)),
                    node("p", node("a", href=p.href,
                            node("button", class="card-button", "Details")
                           )
                    )
                )
            )
           ) for p in get_people() if !p.alumn
        )...
        )
    )
end

function person_info(rp)
    return (;
    date=getvarfrom(:joined, rp),
    name=getvarfrom(:name, rp),
    title=getvarfrom(:title, rp),
    email=getvarfrom(:email, rp),
    portrait=getvarfrom(:portrait, rp, "/assets/portrait_placeholder.png"),
    vitae=getvarfrom(:vitae, rp),
    alumn=getvarfrom(:alumn, rp, false),
    href="/$(splitext(rp)[1])",
    tags=get_page_tags(rp)
    )
end

function get_people(basepath::String="people")
    # find all valid "people/xxx.md" files, exclude the index which is where
    # the people list gets placed
    paths = String[]
    for (root, dirs, files) in walkdir(basepath)
        filter!(p -> endswith(p, ".md") && p != "index.md", files)
        append!(paths, joinpath.(root, files))
    end
    # for each of those people, get their info
    posts = [person_info(rp) for rp in paths]
    sort!(posts, by=x -> x.date)
   
    return posts
end

function hfun_person_header()
    person = person_info(get_rpath())
    return string(node("div", class="franklin-content", 

        node("div", class="profile-header",
            node("div", class="profile-info",
                node("h1", class="profile-name", person.name),
                node("div", class="profile-title", person.title),
                node("div", class="profile-vitae", person.vitae),                    
                node("div", class="profile-email",
                     node("a", href="mailto:$(person.email)", person.email)
                ),
            ),
            node("div", class="profile-image-container",
                 node("img", class="profile-image", src=person.portrait, alt="$(person.name)")
            )
        ),

    ))
end

function hfun_list_projects()
    return string(
        node("div", class="cards-row",
        (
        node("div", class="card-column",
            node("div", class="card-body", 
                node("img", src="/assets/portrait_placeholder.png"),
                node("div", class="card-container", 
                    node("h2", p.name),
                    node("div", class="card-title", p.title),
                    node("div", class="card-email", p.email),
                    node("p", node("a", href="mailto:$(p.email)",
                            node("button", class="card-button", "Contact")
                           )
                    )
                )
            )
           ) for p in get_projects() if !p.completed
        )...
        )
    )
end

function get_projects(basepath::String="projects")
    # find all valid "projects/xxx.md" files, exclude the index which is where
    # the projects list gets placed
    paths = String[]
    for (root, dirs, files) in walkdir(basepath)
        filter!(p -> endswith(p, ".md") && p != "index.md", files)
        append!(paths, joinpath.(root, files))
    end
    # for each of those projects, get their info
    posts = [
        (
        date=getvarfrom(:joined, rp),
        name=getvarfrom(:name, rp),
        title=getvarfrom(:title, rp),
        complete=getvarfrom(:complete, rp, false),
        funding=getvarfrom(:funding, rp, "N/A"),
        href="/$(splitext(rp)[1])",
        tags=get_page_tags(rp)
        )
        for rp in paths
    ]
    sort!(posts, by=x -> x.date)
   
    return posts
end

# Add this to your utils.jl file
function hfun_nav_link(args)
    # Get the current page path
    (href, text) = args
    current_path = get_rpath()
    
    # Check if the current page matches the href or is a subpage
    is_active = startswith(current_path, href[2:end]) || (href == "/" && current_path == "index.html")
    
    # Add the active class if this is the current page or subpage
    class = is_active ? "nav-link active" : "nav-link"
    
    return string(node("a", href=href, class=class, text))
end
