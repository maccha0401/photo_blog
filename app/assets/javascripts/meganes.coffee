$ ->
  $("#meganes .page").infiniteScroll
    # navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
    # nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    # itemSelector: "div.megane" # selector for all items you'll retrieve
    path: 'nav.pagination a[rel=next]'
    append: 'div.megane'
    history: false
    hideNav: "nav.pagination"
    status: ".page-load-status"
