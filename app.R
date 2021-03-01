######################
#Packages and data
#########################

library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)

#@import url('https://fonts.googleapis.com/css2?family=Yusei+Magic&display=swap');



######################
#UI
#########################

ui <- dashboardPage(
    # skin = "red",
    
    ######    
    #Header
    ########
    dashboardHeader(
   
    ),
    
    ##########
    ###Sidebar
    ##########
    sidebar <- dashboardSidebar(
        sidebarMenu(
            menuItem("Infos", tabName = "infos", icon=icon("address-card")),
            menuItem("Formation", tabName = "form", icon = icon("bar-chart-o")),
            menuItem("Compétences", tabName = "comp", icon = icon("bar-chart-o")),
            menuItem("Expériences", tabName="xp",icon = icon("widgets"))
        )
    ),
    
    ########    
    ###Body
    ########  
    Body <- dashboardBody(
         tags$head(
             tags$link(rel = "stylesheet", type = "text/css", href = "dark_mode.css")
        ),

            ####Onglet 0, infos
        tabItems(
            tabItem(tabName = "infos",
                    h1("Mélody Prémaillon", align="center"),
                    fluidRow(
                        HTML('<center><img src="melo.jpg" height=333 width=500></center>')
                        # column(6,
                        #        img(src='melo.jpg', height = 333, width = 500, align="center")
                        #        )
                    ),
                    br(),
                    fluidRow(
                        column(3,
                            infoBox(title = "Adresse", value="2 rue Saint Gilles \n 31500 Toulouse", fill=T, 
                                    color = "navy", icon = icon("envelope"),width=12)
                        ),
                        column(3,
                            infoBox("Mail", value = "melodyp@outlook.fr", fill=T,
                                    col= "teal", icon = icon("at"),width=12)
                        ),
                        column(3,
                            infoBox("Téléphone", value="06 82 27 59 86",fill=T,
                                    color="green",icon=icon("mobile-alt"),width=12)
                        )
                        
                    ),#end fluidRow 1
                
                fluidRow(
                    column(3,
                           infoBox("Mobilité",value="Permis B - véhicule personel", fill=T,
                                   color = "olive", icon = icon("car-side"),width=12)
                    )
                ),#end fluiRow 2
                
                fluidRow(
                    column(4,
                           infoBox(title = "Git", value=a("https://github.com/MelodyPremaillon", href="https://github.com/MelodyPremaillon" ), fill=T, 
                                   color = "yellow", icon = icon("github"),width=12)
                    )
                ),#end fluiRow 3
             
                
            ), #end onglet0
            
            ###Onglet1, Formation   
            tabItem(tabName = "form",
                    #h2("Films les plus empruntés à la médiathèque de Toulouse entre 2011 et 2018"),
                    # fluidRow(
                    #     column(12,
                    #            infoBox("Total des films empruntés",format(sum(movies$nb_prets),big.mark = " "), fill = TRUE,width=3),
                    #            infoBoxOutput("prctfilmtot", width=3)),
                    #     column(12,
                    #            box(plotlyOutput(outputId = "barplottot"))
                    #     )
                    # ),
                    # fluidRow(
                    #     column(4,
                    #            sliderInput("nbfilmstot","Nombre de films à afficher :", min = 1, max = 500, value = 10)
                    #     )
                    # )
            )
            ), #end onglet1             
            
            
            ###Onglet 2 , Compétences
            tabItem(tabName = "comp",
                    # h2("Film les plus empruntés par année"),
                    # fluidRow(
                    #     column(12,
                    #            box(selectInput("ANNEE", "Sélectionnez une année :",choices = seq(2011,2018), selected = 2018),width=2),
                    #            infoBoxOutput("filmempruntesparannees",width=3),
                    #            infoBoxOutput("prctfilmparannee", width=3)
                    #     )
                    # ),  
                    # fluidRow(
                    #     column(12,
                    #            box(plotOutput(outputId = "barplot_peryr"),width=7),
                    #            box(plotOutput("totpretfilmparanees"),width=2)
                    #            
                    #     )
                    # )  ,
                    # fluidRow(
                    #     column(4,
                    #            sliderInput("nbfilms","Nombre de films à afficher :", min = 1, max = 500, value = 10)
                    #     )
                    # )
            ), #end onglet2
            
            
            ##Onglet expériences
            tabItem(tabName = "xp",
                    # h2("Réalisateurs et studios les plus populaires"),     
                    # 
                    # selectInput("variable", "Choisisez une variable :", choice=c("Réalisateur"="AUTEUR","Studio"="Editeur")),
                    # 
                    # plotOutput("test"),
                    # 
                    # DT::dataTableOutput(outputId = "moviestable")
            ) #end onglet3
        #)
    ) #end Body
) #End UI


######################
#Server
#########################
server <- function(input, output) {
    
    #####Reactive
    
    #####Onglet 0, infos
    
    #####Onglet 1, formation
    
    #####Onglet 2, compétences
    
    #####Onglet 3, expériences
    
    
    
    
}

######################
#Run app
#########################
shinyApp(ui = ui, server = server)


