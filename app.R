library(shiny)
library(shinyjs)

ui <- tagList(
  tags$head(
    tags$meta(name="google-signin-scope",content="profile email"),
    tags$meta(name="google-signin-client_id", content="214969242318-gj38kn0nhhnp6ie4798ab88155s8036c.apps.googleusercontent.com"),
    HTML('<script src="https://apis.google.com/js/platform.js?onload=init"></script>'),
    includeScript("signin.js"),
    useShinyjs()
  ),
  fluidPage(
    
    titlePanel("Sample Google Sign-In"),
    
    sidebarLayout(
      sidebarPanel(
        div(id="signin", class="g-signin2", "data-onsuccess"="onSignIn"),
        hidden(actionButton("signout", "Sign Out", onclick="signOut();", class="btn-danger"))
      ),
      
      mainPanel(
        with(tags, dl(dt("Name"), dd(textOutput("g.name")),
                      dt("Email"), dd(textOutput("g.email")),
                      dt("Image"), dd(uiOutput("g.image")) ))
      )
    )
  )
)

server <- function(input, output) {
  output$g.name = renderText({ input$g.name })
  output$g.email = renderText({ input$g.email })
  output$g.image = renderUI({ img(src=input$g.image) })
  
  observe({
    if (isTruthy(input$g.id)) {
      show("signout")
      hide("signin")
    } else {
      show("signin")
      hide("signout")
    }
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

