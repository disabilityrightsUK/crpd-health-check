

## Shiny Dashboard

library(shinydashboard)
library(shiny)
library(shinyBS)

dashboardPage(

  dashboardHeader(title = "UNCRPD Healthcheck"),

    dashboardSidebar(

      sidebarMenu(
        
             menuItem("Home", tabName = "home"),
              
              menuItem("Articles 1-3", tabName = "article1-3"),
               menuItem("Article 4 ", tabName = "article4"),
               menuItem("Article 5 ", tabName = "article5"),
               menuItem("Article 6 ", tabName = "article6"),
               menuItem("Article 7 ", tabName = "article7"),
               menuItem("Article 8 ", tabName = "article8"),
               menuItem("Article 9 ", tabName = "article9"),
               menuItem("Article 10 ", tabName = "article10"),
               menuItem("Article 11 ", tabName = "article11"),
               menuItem("Article 12 ", tabName = "article12"),
               menuItem("Article 13 ", tabName = "article13"),
               menuItem("Article 14 ", tabName = "article14"),
               menuItem("Article 15 ", tabName = "article15"),
               menuItem("Article 16 ", tabName = "article16"),
               menuItem("Article 17 ", tabName = "article17"),
               menuItem("Article 18 ", tabName = "article18"),
               menuItem("Article 19 ", tabName = "article19"),
               menuItem("Article 20 ", tabName = "article20"),
               menuItem("Article 21 ", tabName = "article21"),
               menuItem("Article 22 ", tabName = "article22"),
               menuItem("Article 23 ", tabName = "article23"),
               menuItem("Article 24 ", tabName = "article24"),
               menuItem("Article 25 ", tabName = "article25"),
               menuItem("Article 26 ", tabName = "article26"),
               menuItem("Article 27 ", tabName = "article27"),
               menuItem("Article 28 ", tabName = "article28"),
               menuItem("Article 29 ", tabName = "article29"),
               menuItem("Article 30 ", tabName = "article30"),
               menuItem("Article 31 ", tabName = "article31"),
               menuItem("Article 32 ", tabName = "article32"),
               menuItem("Article 33 ", tabName = "article33")

      
    )),
    
    dashboardBody(
      
      
      tabItems(
  # home --------------------------------------------------------------- 
  tabItem(tabName = "home",
          
          withTags({
  h1(
   "Welcome to Disability Rights UK's", 
   em("United Nations Convention on the Rights of Persons with Disabilities"),
   "Health Check Tool"
  )
          }),
  
    fluidRow(h3("All data and comments are currently placeholder text and 
                may or may not represent the views of Disability Rights UK."),
    box(
      title="RAG Rating Totals", status = "primary", plotOutput("status_plot")
      ),
    
   box(  #Highlight areas of greatest concern
     h3("Areas of Greatest Concern:"),
      tableOutput("concern_table"))
  ),
  

     actionButton("toggle", "Show Article Names"),
          conditionalPanel(
            condition = "input.toggle % 2 == 1",
      
      h4("Article 1 - Purpose"),
           
      h4("Article 2 - Definitions"),
      
      h4("Article 3 - General principles"),
      
      h4("Article 4 - General obligations"),
      
      h4("Article 5 - Equality and non-discrimination"),
      
      h4("Article 6 - Women with Disabilities"),
      
      h4("Article 7 - Children with disabilities"),
      
      h4("Article 8 - Awareness-raising"),

      h4("Article 9 - Accessibility"),

      h4("Article 10 - Right to life"),
      
      h4("Article 11 - Situations of risk and humanitarian emergencies"),
      
      h4("Article 12 - Equal recognition before the law"),
      
      h4("Article 13 - Access to justice"),
      
      h4("Article 14 - Liberty and security of person"),
      
      h4("Article 15 - Freedom from torture or cruel, inhuman or degrading treatment or punishment"),
      
      h4("Article 16 - Freedom from exploitation, violence and abuse"),
      
      h4("Article 17 - Protecting the integrity of the person"),
      
      h4("Article 18 - Liberty of movement and nationality"),
      
      h4("Article 19 - Living independently and being included in the community"),
      
      h4("Article 20 - Personal mobility"),
      
      h4("Article 21 - Freedom of expression and opinion, and access to information"),
      
      h4("Article 22 - Respect for privacy"),
      
      h4("Article 23 - Respect for home and the family"),
      
      h4("Article 24 - Education"),
      
      h4("Article 25 - Health"),
      
      h4("Article 26 - Habilitation and rehabilitation"),
      
      h4("Article 27 - Work and employment"),
      
      h4("Article 28 - Adequate standard of living and social protection"),
      
      h4("Article 29 - Participation in political and public life"),
      
      h4("Article 30 - Participation in cultural life, recreation leisure and sport"),
      
      h4("Article 31 - Statistics and data collection"),
      
      h4("Article 32 - International cooperation"),
      
      h4("Article 33 - National implementation and monitoring"),
      
      h4("Article 34 - Committee on the Rights of Persons with Disabilities")
      

)
            
  ),
  
  # article1 ---------------------------------------------------------------   
  tabItem(tabName = "article1-3",
  
  h1("Introductory Articles"),
          
    
    actionButton("toggle_article1", "Show/Hide Article Text"),
    
      h2("Article 1 - Purpose"),
          conditionalPanel(condition = "input.toggle_article1 % 2 == 1",
    
                           
    p("The purpose of the present Convention is to promote, protect and ensure the full and equal enjoyment of all human rights and fundamental freedoms by all persons with disabilities, and to promote respect for their inherent dignity."),
    
    p("Persons with disabilities include those who have long-term physical, mental, intellectual or sensory impairments which in interaction with various barriers may hinder their full and effective participation in society on an equal basis with others.")),
    
        h2("Article 2 - Definitions"),
    
              conditionalPanel(condition = "input.toggle_article1 % 2 == 1",
      
    p("For the purposes of the present Convention:"),
    
    p("“Communication” includes languages, display of text, Braille, tactile communication, large print, accessible multimedia as well as written, audio, plain-language, human-reader and augmentative and alternative modes, means and formats of communication, including accessible information and communication technology;"),
    
    p("“Language” includes spoken and signed languages and other forms of non spoken languages;"),
    
    p("“Discrimination on the basis of disability” means any distinction, exclusion or restriction on the basis of disability which has the purpose or effect of impairing or nullifying the recognition, enjoyment or exercise, on an equal basis with others, of all human rights and fundamental freedoms in the political, economic, social, cultural, civil or any other field. It includes all forms of discrimination, including denial of reasonable accommodation;"),
    
    p("“Reasonable accommodation” means necessary and appropriate modification and adjustments not imposing a disproportionate or undue burden, where needed in a particular case, to ensure to persons with disabilities the enjoyment or exercise on an equal basis with others of all human rights and fundamental freedoms;"),
    
    p("“Universal design” means the design of products, environments, programmes and services to be usable by all people, to the greatest extent possible, without the need for adaptation or specialized design. “Universal design” shall not exclude assistive devices for particular groups of persons with disabilities where this is needed.")
    
          ),
        h2("Article 3 - General principles"),
    
    conditionalPanel(condition = "input.toggle_article1 % 2 == 1",
       
    tags$ol(
      
      tags$li("The principles of the present Convention shall be:"),
      
      tags$ol(type="a",
  
  tags$li("Respect for inherent dignity, individual autonomy including the freedom to make one’s own choices, and independence of persons;"),
  
  tags$li("Non-discrimination;"),
  
  tags$li("Full and effective participation and inclusion in society;"),
  
  tags$li("Respect for difference and acceptance of persons with disabilities as part of human diversity and humanity;"),
  
  tags$li("Equality of opportunity;"),
  
  tags$li("Accessibility;"),
  
  tags$li("Equality between men and women;"),
  
  tags$li("Respect for the evolving capacities of children with disabilities and respect for the right of children with disabilities to preserve their identities.")
  
        )
      )
    )
  
    
  ),
  
  
  # article4 ---------------------------------------------------------------    
  
  tabItem(tabName = "article4",
    h2("Article 4 - General obligations"),
    
    fluidRow(valueBoxOutput("article4_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article4_details")))),
    
    actionButton("toggle_article4", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article4 % 2 == 1",
    
    
    tags$ol(
      
      tags$li("States Parties undertake to ensure and promote the full realization of all human rights and fundamental freedoms for all persons with disabilities without discrimination of any kind on the basis of disability. To this end, States Parties undertake:"),
      
      tags$ol(type="a",
  
  tags$li("To adopt all appropriate legislative, administrative and other measures for the implementation of the rights recognized in the present Convention;"),
  
  tags$li("To take all appropriate measures, including legislation, to modify or abolish existing laws, regulations, customs and practices that constitute discrimination against persons with disabilities;"),
  
  tags$li("To take into account the protection and promotion of the human rights of persons with disabilities in all policies and programmes;"),
  
  tags$li("To refrain from engaging in any act or practice that is inconsistent with the present Convention and to ensure that public authorities and institutions act in conformity with the present Convention;"),
  
  tags$li("To take all appropriate measures to eliminate discrimination on the basis of disability by any person, organization or private enterprise;"),
  
  tags$li("To undertake or promote research and development of universally designed goods, services, equipment and facilities, as defined in article 2 of the present Convention, which should require the minimum possible adaptation and the least cost to meet the specific needs of a person with disabilities, to promote their availability and use, and to promote universal design in the development of standards and guidelines;"),
  
  tags$li("To undertake or promote research and development of, and to promote the availability and use of new technologies, including information and communications technologies, mobility aids, devices and assistive technologies, suitable for persons with disabilities, giving priority to technologies at an affordable cost;"),
  
  tags$li("To provide accessible information to persons with disabilities about mobility aids, devices and assistive technologies, including new technologies, as well as other forms of assistance, support services and facilities;"),
  
  tags$li("To promote the training of professionals and staff working with persons with disabilities in the rights recognized in the present Convention so as to better provide the assistance and services guaranteed by those rights.")
  
      ),
      
      tags$li("With regard to economic, social and cultural rights, each State Party undertakes to take measures to the maximum of its available resources and, where needed, within the framework of international cooperation, with a view to achieving progressively the full realization of these rights, without prejudice to those obligations contained in the present Convention that are immediately applicable according to international law."),
      
      tags$li("In the development and implementation of legislation and policies to implement the present Convention, and in other decision-making processes concerning issues relating to persons with disabilities, States Parties shall closely consult with and actively involve persons with disabilities, including children with disabilities, through their representative organizations."),
      
      tags$li("Nothing in the present Convention shall affect any provisions which are more conducive to the realization of the rights of persons with disabilities and which may be contained in the law of a State Party or international law in force for that State. There shall be no restriction upon or derogation from any of the human rights and fundamental freedoms recognized or existing in any State Party to the present Convention pursuant to law, conventions, regulation or custom on the pretext that the present Convention does not recognize such rights or freedoms or that it recognizes them to a lesser extent."),
      
      tags$li("The provisions of the present Convention shall extend to all parts of federal States without any limitations or exceptions.")
      
      
    ))),
  
  
  # article5 ---------------------------------------------------------------
  tabItem(tabName = "article5",
    h2("Article 5 - Equality and non-discrimination"),
    
    fluidRow(valueBoxOutput("article5_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article5_details")))),
    
    actionButton("toggle_article5", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article5 % 2 == 1",
    tags$ol(
      
      tags$li("States Parties recognize that all persons are equal before and under the law and are entitled without any discrimination to the equal protection and equal benefit of the law."),
      
      tags$li("States Parties shall prohibit all discrimination on the basis of disability and guarantee to persons with disabilities equal and effective legal protection against discrimination on all grounds."),
      
      tags$li("In order to promote equality and eliminate discrimination, States Parties shall take all appropriate steps to ensure that reasonable accommodation is provided."),
      
      tags$li("Specific measures which are necessary to accelerate or achieve de facto equality of persons with disabilities shall not be considered discrimination under the terms of the present Convention.")
      
      )
    )
  ),
  
  
  # article6 ---------------------------------------------------------------    
  
  tabItem(tabName = "article6",
    h2("Article 6 - Women with Disabilities"),
    
        fluidRow(valueBoxOutput("article6_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article6_details")))),
    
    actionButton("toggle_article6", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article6 % 2 == 1",
                           
    tags$ol(
      
      tags$li("States Parties recognize that women and girls with disabilities are subject to multiple discrimination, and in this regard shall take measures to ensure the full and equal enjoyment by them of all human rights and fundamental freedoms."),
      
      tags$li("States Parties shall take all appropriate measures to ensure the full development, advancement and empowerment of women, for the purpose of guaranteeing them the exercise and enjoyment of the human rights and fundamental freedoms set out in the present Convention.")
    ))),
  
  
  # article7 ---------------------------------------------------------------    
  
  tabItem(tabName = "article7",
    h2("Article 7 - Children with disabilities"),
    
    fluidRow(valueBoxOutput("article7_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article7_details")))),
    
    actionButton("toggle_article7", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article7 % 2 == 1",
    
    tags$ol(
      
      tags$li("States Parties shall take all necessary measures to ensure the full enjoyment by children with disabilities of all human rights and fundamental freedoms on an equal basis with other children."),
      
      tags$li("In all actions concerning children with disabilities, the best interests of the child shall be a primary consideration."),
      
      tags$li("States Parties shall ensure that children with disabilities have the right to express their views freely on all matters affecting them, their views being given due weight in accordance with their age and maturity, on an equal basis with other children, and to be provided with disability and age-appropriate assistance to realize that right.")
      
        )
      )
    ),
  
  # article8 ---------------------------------------------------------------    
  
  tabItem(tabName = "article8",
    h2("Article 8 - Awareness-raising"),
    
    fluidRow(valueBoxOutput("article8_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article8_details")))),
    
    actionButton("toggle_article8", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article8 % 2 == 1",
    
    tags$ol(
      
      tags$li("States Parties undertake to adopt immediate, effective and appropriate measures:"),
      
      tags$li("To raise awareness throughout society, including at the family level, regarding persons with disabilities, and to foster respect for the rights and dignity of persons with disabilities;"),
      
      tags$li("To combat stereotypes, prejudices and harmful practices relating to persons with disabilities, including those based on sex and age, in all areas of life;"),
      
      tags$li("To promote awareness of the capabilities and contributions of persons with disabilities."),
      
      tags$li("Measures to this end include:"),
      
      tags$ol(type="a",
  
  tags$li("Initiating and maintaining effective public awareness campaigns designed:"),
  
  tags$li("To nurture receptiveness to the rights of persons with disabilities;")
  
      ), tags$ol(type="i",
     
     tags$li("To promote positive perceptions and greater social awareness towards persons with disabilities;"),
     
     tags$li("To promote recognition of the skills, merits and abilities of persons with disabilities, and of their contributions to the workplace and the labour market;")
     
      ),
      
      tags$li("Fostering at all levels of the education system, including in all children from an early age, an attitude of respect for the rights of persons with disabilities;"),
      
      tags$li("Encouraging all organs of the media to portray persons with disabilities in a manner consistent with the purpose of the present Convention;"),
      
      tags$li("Promoting awareness-training programmes regarding persons with disabilities and the rights of persons with disabilities.")
  
    ))),
  
  
  # article9 ---------------------------------------------------------------    
  tabItem(tabName = "article9",
    h2("Article 9 - Accessibility"),
    
    fluidRow(valueBoxOutput("article9_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article9_details")))),
    
    actionButton("toggle_article9", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article9 % 2 == 1",
    
    tags$ol(
      
      tags$li("To enable persons with disabilities to live independently and participate fully in all aspects of life, States Parties shall take appropriate measures to ensure to persons with disabilities access, on an equal basis with others, to the physical environment, to transportation, to information and communications, including information and communications technologies and systems, and to other facilities and services open or provided to the public, both in urban and in rural areas. These measures, which shall include the identification and elimination of obstacles and barriers to accessibility, shall apply to, inter alia:"),
      
      tags$ol(type="a",
  
  tags$li("Buildings, roads, transportation and other indoor and outdoor facilities, including schools, housing, medical facilities and workplaces;"),
  
  tags$li("Information, communications and other services, including electronic services and emergency services.")),
      
      tags$li("States Parties shall also take appropriate measures:"),
      
      tags$ol(type="a",
  
  tags$li("To develop, promulgate and monitor the implementation of minimum standards and guidelines for the accessibility of facilities and services open or provided to the public;"),
  
  tags$li("To ensure that private entities that offer facilities and services which are open or provided to the public take into account all aspects of accessibility for persons with disabilities;"),
  
  tags$li("To provide training for stakeholders on accessibility issues facing persons with disabilities;"),
  
  tags$li("To provide in buildings and other facilities open to the public signage in Braille and in easy to read and understand forms;"),
  
  tags$li("To provide forms of live assistance and intermediaries, including guides, readers and professional sign language interpreters, to facilitate accessibility to buildings and other facilities open to the public;"),
  
  tags$li("To promote other appropriate forms of assistance and support to persons with disabilities to ensure their access to information;"),
  
  tags$li("To promote access for persons with disabilities to new information and communications technologies and systems, including the Internet;"),
  
  tags$li("To promote the design, development, production and distribution of accessible information and communications technologies and systems at an early stage, so that these technologies and systems become accessible at minimum cost.")
  
      )))),
  
  
  # article10 --------------------------------------------------------------- 
  tabItem(tabName = "article10",
    h2("Article 10 - Right to life"),
    
        fluidRow(valueBoxOutput("article10_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article10_details")))),
    
    actionButton("toggle_article10", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article10 % 2 == 1",

    tags$ol(
      
      tags$li("States Parties reaffirm that every human being has the inherent right to life and shall take all necessary measures to ensure its effective enjoyment by persons with disabilities on an equal basis with others.")
      
    ))),
  
  
  # article11 ---------------------------------------------------------------  
  tabItem(tabName = "article11",
    h2("Article 11 - Situations of risk and humanitarian emergencies"),
    
    fluidRow(valueBoxOutput("article11_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article11_details")))),
    
    actionButton("toggle_article11", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article11 % 2 == 1",
    
    tags$ol(
      
      tags$li("States Parties shall take, in accordance with their obligations under international law, including international humanitarian law and international human rights law, all necessary measures to ensure the protection and safety of persons with disabilities in situations of risk, including situations of armed conflict, humanitarian emergencies and the occurrence of natural disasters.")
      
    ))),
  
  # article12 ---------------------------------------------------------------  
  tabItem(tabName = "article12",
    h2("Article 12 - Equal recognition before the law"),
    
        fluidRow(valueBoxOutput("article12_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article12_details")))),
    
    actionButton("toggle_article12", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article12 % 2 == 1",

    tags$ol(
      
      tags$li("States Parties reaffirm that persons with disabilities have the right to recognition everywhere as persons before the law."),
      
      tags$li("States Parties shall recognize that persons with disabilities enjoy legal capacity on an equal basis with others in all aspects of life."),
      
      tags$li("States Parties shall take appropriate measures to provide access by persons with disabilities to the support they may require in exercising their legal capacity."),
      
      tags$li("States Parties shall ensure that all measures that relate to the exercise of legal capacity provide for appropriate and effective safeguards to prevent abuse in accordance with international human rights law. Such safeguards shall ensure that measures relating to the exercise of legal capacity respect the rights, will and preferences of the person, are free of conflict of interest and undue influence, are proportional and tailored to the person’s circumstances, apply for the shortest time possible and are subject to regular review by a competent, independent and impartial authority or judicial body. The safeguards shall be proportional to the degree to which such measures affect the person’s rights and interests."),
      
      tags$li("Subject to the provisions of this article, States Parties shall take all appropriate and effective measures to ensure the equal right of persons with disabilities to own or inherit property, to control their own financial affairs and to have equal access to bank loans, mortgages and other forms of financial credit, and shall ensure that persons with disabilities are not arbitrarily deprived of their property.")
      
    ))),
  
  
  # article13 --------------------------------------------------------------- 
  tabItem(tabName = "article13",
    h2("Article 13 - Access to justice"),
    
        fluidRow(valueBoxOutput("article13_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article13_details")))),
    
    actionButton("toggle_article13", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article13 % 2 == 1",

    tags$ol(
      
      tags$li("States Parties shall ensure effective access to justice for persons with disabilities on an equal basis with others, including through the provision of procedural and age-appropriate accommodations, in order to facilitate their effective role as direct and indirect participants, including as witnesses, in all legal proceedings, including at investigative and other preliminary stages."),
      
      tags$li("In order to help to ensure effective access to justice for persons with disabilities, States Parties shall promote appropriate training for those working in the field of administration of justice, including police and prison staff.")
      
    ))),
  
  # article14 ---------------------------------------------------------------  
  tabItem(tabName = "article14",
    h2("Article 14 - Liberty and security of person"),
    
    fluidRow(valueBoxOutput("article14_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article14_details")))),
    
    actionButton("toggle_article14", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article14 % 2 == 1",
    
    tags$ol(
      
      tags$li("States Parties shall ensure that persons with disabilities, on an equal basis with others:"),
      
      tags$ol(type="a",
  
        tags$li("Enjoy the right to liberty and security of person;"),
  
        tags$li("Are not deprived of their liberty unlawfully or arbitrarily, and that any deprivation of liberty is in conformity with the law, and that the existence of a disability shall in no case justify a deprivation of liberty.")
  
      ),
      
      tags$li("States Parties shall ensure that if persons with disabilities are deprived of their liberty through any process, they are, on an equal basis with others, entitled to guarantees in accordance with international human rights law and shall be treated in compliance with the objectives and principles of the present Convention, including by provision of reasonable accommodation.")
      
    ))),
  
  
  # article15 ---------------------------------------------------------------  
  tabItem(tabName = "article15",
    h2("Article 15 - Freedom from torture or cruel, inhuman or degrading treatment or punishment"),
    
            fluidRow(valueBoxOutput("article15_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article15_details")))),
    
    actionButton("toggle_article15", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article15 % 2 == 1",

    tags$ol(
      
      tags$li("No one shall be subjected to torture or to cruel, inhuman or degrading treatment or punishment. In particular, no one shall be subjected without his or her free consent to medical or scientific experimentation."),
      
      tags$li("States Parties shall take all effective legislative, administrative, judicial or other measures to prevent persons with disabilities, on an equal basis with others, from being subjected to torture or cruel, inhuman or degrading treatment or punishment.")
      
    ))),
  
  
  # article16 ---------------------------------------------------------------
  tabItem(tabName = "article16",
    h2("Article 16 - Freedom from exploitation, violence and abuse"),
    
            fluidRow(valueBoxOutput("article16_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article16_details")))),
    
    actionButton("toggle_article16", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article16 % 2 == 1",

    tags$ol(
      
      tags$li("States Parties shall take all appropriate legislative, administrative, social, educational and other measures to protect persons with disabilities, both within and outside the home, from all forms of exploitation, violence and abuse, including their gender-based aspects."),
      
      tags$li("States Parties shall also take all appropriate measures to prevent all forms of exploitation, violence and abuse by ensuring, inter alia, appropriate forms of gender- and age-sensitive assistance and support for persons with disabilities and their families and caregivers, including through the provision of information and education on how to avoid, recognize and report instances of exploitation, violence and abuse. States Parties shall ensure that protection services are age-, gender- and disability-sensitive."),
      
      tags$li("In order to prevent the occurrence of all forms of exploitation, violence and abuse, States Parties shall ensure that all facilities and programmes designed to serve persons with disabilities are effectively monitored by independent authorities."),
      
      tags$li("States Parties shall take all appropriate measures to promote the physical, cognitive and psychological recovery, rehabilitation and social reintegration of persons with disabilities who become victims of any form of exploitation, violence or abuse, including through the provision of protection services. Such recovery and reintegration shall take place in an environment that fosters the health, welfare, self-respect, dignity and autonomy of the person and takes into account gender- and age-specific needs."),
      
      tags$li("States Parties shall put in place effective legislation and policies, including women- and child-focused legislation and policies, to ensure that instances of exploitation, violence and abuse against persons with disabilities are identified, investigated and, where appropriate, prosecuted.")
      
    ))),
  
  
  # article17 ---------------------------------------------------------------
  tabItem(tabName = "article17",
    h2("Article 17 - Protecting the integrity of the person"),
    
            fluidRow(valueBoxOutput("article17_rating", width = 8)),
    
    fluidRow(column(10, offset=1, h4(textOutput("article17_details")))),
    
    actionButton("toggle_article17", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article17 % 2 == 1",

    tags$ol(
      
      tags$li("Every person with disabilities has a right to respect for his or her physical and mental integrity on an equal basis with others.")
      
    ))),
    
  # article18 ---------------------------------------------------------------
    tabItem(tabName = "article18",
      h2("Article 18 - Liberty of movement and nationality"),
      
              fluidRow(valueBoxOutput("article18_rating", width = 8)),
      
      fluidRow(column(10, offset=1, h4(textOutput("article18_details")))),
      
      actionButton("toggle_article18", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article18 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties shall recognize the rights of persons with disabilities to liberty of movement, to freedom to choose their residence and to a nationality, on an equal basis with others, including by ensuring that persons with disabilities:"),
  
  tags$ol(type="a",
    
    tags$li("Have the right to acquire and change a nationality and are not deprived of their nationality arbitrarily or on the basis of disability;"),
    
    tags$li("Are not deprived, on the basis of disability, of their ability to obtain, possess and utilize documentation of their nationality or other documentation of identification, or to utilize relevant processes such as immigration proceedings, that may be needed to facilitate exercise of the right to liberty of movement;"),
    
    tags$li("Are free to leave any country, including their own;"),
    
    tags$li("Are not deprived, arbitrarily or on the basis of disability, of the right to enter their own country.")
    
  ),
  
  tags$li("Children with disabilities shall be registered immediately after birth and shall have the right from birth to a name, the right to acquire a nationality and, as far as possible, the right to know and be cared for by their parents.")
  
      ))),
    
  
  # article19 ---------------------------------------------------------------
    tabItem(tabName = "article19",
      h2("Article 19 - Living independently and being included in the community"),
      
              fluidRow(valueBoxOutput("article19_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article19_details")))),
      
      actionButton("toggle_article19", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article19 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties to the present Convention recognize the equal right of all persons with disabilities to live in the community, with choices equal to others, and shall take effective and appropriate measures to facilitate full enjoyment by persons with disabilities of this right and their full inclusion and participation in the community, including by ensuring that:"),
  
  tags$ol(type="a",
    
    tags$li("Persons with disabilities have the opportunity to choose their place of residence and where and with whom they live on an equal basis with others and are not obliged to live in a particular living arrangement;"),
    
    tags$li("Persons with disabilities have access to a range of in-home, residential and other community support services, including personal assistance necessary to support living and inclusion in the community, and to prevent isolation or segregation from the community;"),
    
    tags$li("Community services and facilities for the general population are available on an equal basis to persons with disabilities and are responsive to their needs.")
    
  )))),
    
  
  # article20 ---------------------------------------------------------------
    tabItem(tabName = "article20",
      h2("Article 20 - Personal mobility"),
      
      fluidRow(valueBoxOutput("article20_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article20_details")))),
      
      actionButton("toggle_article20", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article20 % 2 == 1",

      p("States Parties shall take effective measures to ensure personal mobility with the greatest possible independence for persons with disabilities, including by:"),
      
      tags$ol(type="a",
  
  tags$li("Facilitating the personal mobility of persons with disabilities in the manner and at the time of their choice, and at affordable cost;"),
  
  tags$li("Facilitating access by persons with disabilities to quality mobility aids, devices, assistive technologies and forms of live assistance and intermediaries, including by making them available at affordable cost;"),
  
  tags$li("Providing training in mobility skills to persons with disabilities and to specialist staff working with persons with disabilities;"),
  
  tags$li("Encouraging entities that produce mobility aids, devices and assistive technologies to take into account all aspects of mobility for persons with disabilities.")
  
      ))),
      
  
  # article21 ---------------------------------------------------------------
    tabItem(tabName = "article21",
      h2("Article 21 - Freedom of expression and opinion, and access to information"),
      
            fluidRow(valueBoxOutput("article21_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article21_details")))),
      
      actionButton("toggle_article21", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article21 % 2 == 1",

      p("States Parties shall take all appropriate measures to ensure that persons with disabilities can exercise the right to freedom of expression and opinion, including the freedom to seek, receive and impart information and ideas on an equal basis with others and through all forms of communication of their choice, as defined in article 2 of the present Convention, including by:"),
      
      tags$ol(
  
  tags$li("Providing information intended for the general public to persons with disabilities in accessible formats and technologies appropriate to different kinds of disabilities in a timely manner and without additional cost;"),
  
  tags$li("Accepting and facilitating the use of sign languages, Braille, augmentative and alternative communication, and all other accessible means, modes and formats of communication of their choice by persons with disabilities in official interactions;"),
  
  tags$li("Urging private entities that provide services to the general public, including through the Internet, to provide information and services in accessible and usable formats for persons with disabilities;"),
  
  tags$li("Encouraging the mass media, including providers of information through the Internet, to make their services accessible to persons with disabilities;"),
  
  tags$li("Recognizing and promoting the use of sign languages.")
  
      ))),
  
  # article22 ---------------------------------------------------------------
    tabItem(tabName = "article22",
      h2("Article 22 - Respect for privacy"),
      
            fluidRow(valueBoxOutput("article22_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article22_details")))),
      
      actionButton("toggle_article22", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article22 % 2 == 1",

      tags$ol(
  
  tags$li("No person with disabilities, regardless of place of residence or living arrangements, shall be subjected to arbitrary or unlawful interference with his or her privacy, family, home or correspondence or other types of communication or to unlawful attacks on his or her honour and reputation. Persons with disabilities have the right to the protection of the law against such interference or attacks."),
  
  tags$li("States Parties shall protect the privacy of personal, health and rehabilitation information of persons with disabilities on an equal basis with others.")
  
      ))),
    
  
  # article23 ---------------------------------------------------------------
    tabItem(tabName = "article23",
      h2("Article 23 - Respect for home and the family"),#
      
            fluidRow(valueBoxOutput("article23_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article23_details")))),
      
      actionButton("toggle_article23", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article23 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties shall take effective and appropriate measures to eliminate discrimination against persons with disabilities in all matters relating to marriage, family, parenthood and relationships, on an equal basis with others, so as to ensure that:"),
  
  tags$li("The right of all persons with disabilities who are of marriageable age to marry and to found a family on the basis of free and full consent of the intending spouses is recognized;"),
  
  tags$li("The rights of persons with disabilities to decide freely and responsibly on the number and spacing of their children and to have access to age-appropriate information, reproductive and family planning education are recognized, and the means necessary to enable them to exercise these rights are provided;"),
  
  tags$li("Persons with disabilities, including children, retain their fertility on an equal basis with others."),
  
  tags$li("States Parties shall ensure the rights and responsibilities of persons with disabilities, with regard to guardianship, wardship, trusteeship, adoption of children or similar institutions, where these concepts exist in national legislation; in all cases the best interests of the child shall be paramount. States Parties shall render appropriate assistance to persons with disabilities in the performance of their child-rearing responsibilities."),
  
  tags$li("States Parties shall ensure that children with disabilities have equal rights with respect to family life. With a view to realizing these rights, and to prevent concealment, abandonment, neglect and segregation of children with disabilities, States Parties shall undertake to provide early and comprehensive information, services and support to children with disabilities and their families."),
  
  tags$li("States Parties shall ensure that a child shall not be separated from his or her parents against their will, except when competent authorities subject to judicial review determine, in accordance with applicable law and procedures, that such separation is necessary for the best interests of the child. In no case shall a child be separated from parents on the basis of a disability of either the child or one or both of the parents."),
  
  tags$li("States Parties shall, where the immediate family is unable to care for a child with disabilities, undertake every effort to provide alternative care within the wider family, and failing that, within the community in a family setting.")
  
      ))),
    
  # article24 ---------------------------------------------------------------
    tabItem(tabName = "article24",
      h2("Article 24 - Education"),
      
      fluidRow(valueBoxOutput("article24_rating", width = 8)),
      
      fluidRow(column(10, offset=1, h4(textOutput("article24_details")))),
      
      actionButton("toggle_article24", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article24 % 2 == 1",

      tags$ol(
  tags$li("States Parties recognize the right of persons with disabilities to education. With a view to realizing this right without discrimination and on the basis of equal opportunity, States Parties shall ensure an inclusive education system at all levels and lifelong learning directed to:"),
  
  tags$ol(type="a",
    
    tags$li("The full development of human potential and sense of dignity and self-worth, and the strengthening of respect for human rights, fundamental freedoms and human diversity;"),
    
    tags$li("The development by persons with disabilities of their personality, talents and creativity, as well as their mental and physical abilities, to their fullest potential;"),
    
    tags$li("Enabling persons with disabilities to participate effectively in a free society.")),
  
  tags$li("In realizing this right, States Parties shall ensure that:"),
  
  tags$ol(type="a",
    
    tags$li("Persons with disabilities are not excluded from the general education system on the basis of disability, and that children with disabilities are not excluded from free and compulsory primary education, or from secondary education, on the basis of disability;"),
    
    tags$li("Persons with disabilities can access an inclusive, quality and free primary education and secondary education on an equal basis with others in the communities in which they live;"),
    
    tags$li("Reasonable accommodation of the individual’s requirements is provided;"),
    
    tags$li("Persons with disabilities receive the support required, within the general education system, to facilitate their effective education;"),
    
    tags$li("Effective individualized support measures are provided in environments that maximize academic and social development, consistent with the goal of full inclusion.")),
  
  tags$li("States Parties shall enable persons with disabilities to learn life and social development skills to facilitate their full and equal participation in education and as members of the community. To this end, States Parties shall take appropriate measures, including:"),
  
  tags$ol(type="a",
    
    tags$li("Facilitating the learning of Braille, alternative script, augmentative and alternative modes, means and formats of communication and orientation and mobility skills, and facilitating peer support and mentoring;"),
    
    tags$li("Facilitating the learning of sign language and the promotion of the linguistic identity of the deaf community;"),
    
    tags$li("Ensuring that the education of persons, and in particular children, who are blind, deaf or deafblind, is delivered in the most appropriate languages and modes and means of communication for the individual, and in environments which maximize academic and social development.")),
  
  tags$li("In order to help ensure the realization of this right, States Parties shall take appropriate measures to employ teachers, including teachers with disabilities, who are qualified in sign language and/or Braille, and to train professionals and staff who work at all levels of education. Such training shall incorporate disability awareness and the use of appropriate augmentative and alternative modes, means and formats of communication, educational techniques and materials to support persons with disabilities."),
  
  tags$li("States Parties shall ensure that persons with disabilities are able to access general tertiary education, vocational training, adult education and lifelong learning without discrimination and on an equal basis with others. To this end, States Parties shall ensure that reasonable accommodation is provided to persons with disabilities.")
  
      ))),
    
  # article25 ---------------------------------------------------------------
    tabItem(tabName = "article25",
      h2("Article 25 - Health"),
      
      fluidRow(valueBoxOutput("article25_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article25_details")))),
      
      actionButton("toggle_article25", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article25 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties recognize that persons with disabilities have the right to the enjoyment of the highest attainable standard of health without discrimination on the basis of disability. States Parties shall take all appropriate measures to ensure access for persons with disabilities to health services that are gender-sensitive, including health-related rehabilitation. In particular, States Parties shall:"),
  
  tags$ol(type="a",
    
    tags$li("Provide persons with disabilities with the same range, quality and standard of free or affordable health care and programmes as provided to other persons, including in the area of sexual and reproductive health and population-based public health programmes;"),
    
    tags$li("Provide those health services needed by persons with disabilities specifically because of their disabilities, including early identification and intervention as appropriate, and services designed to minimize and prevent further disabilities, including among children and older persons;"),
    
    tags$li("Provide these health services as close as possible to people’s own communities, including in rural areas;"),
    
    tags$li("Require health professionals to provide care of the same quality to persons with disabilities as to others, including on the basis of free and informed consent by, inter alia, raising awareness of the human rights, dignity, autonomy and needs of persons with disabilities through training and the promulgation of ethical standards for public and private health care;"),
    
    tags$li("Prohibit discrimination against persons with disabilities in the provision of health insurance, and life insurance where such insurance is permitted by national law, which shall be provided in a fair and reasonable manner;"),
    
    tags$li("Prevent discriminatory denial of health care or health services or food and fluids on the basis of disability."))
  
      ))),
    
  
  # article26 ---------------------------------------------------------------
    tabItem(tabName = "article26",
      h2("Article 26 - Habilitation and rehabilitation"),
      
      fluidRow(valueBoxOutput("article26_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article26_details")))),
      
      actionButton("toggle_article26", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article26 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties shall take effective and appropriate measures, including through peer support, to enable persons with disabilities to attain and maintain maximum independence, full physical, mental, social and vocational ability, and full inclusion and participation in all aspects of life. To that end, States Parties shall organize, strengthen and extend comprehensive habilitation and rehabilitation services and programmes, particularly in the areas of health, employment, education and social services, in such a way that these services and programmes:"),
  
  tags$ol(type="a",
    
    tags$li("Begin at the earliest possible stage, and are based on the multidisciplinary assessment of individual needs and strengths;"),
    
    tags$li("Support participation and inclusion in the community and all aspects of society, are voluntary, and are available to persons with disabilities as close as possible to their own communities, including in rural areas.")),
  
  tags$li("States Parties shall promote the development of initial and continuing training for professionals and staff working in habilitation and rehabilitation services."),
  
  tags$li("States Parties shall promote the availability, knowledge and use of assistive devices and technologies, designed for persons with disabilities, as they relate to habilitation and rehabilitation.")
  
      ))),
    
  # article27 ---------------------------------------------------------------
    tabItem(tabName = "article27",
      h2("Article 27 - Work and employment"),
      
      fluidRow(valueBoxOutput("article27_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article27_details")))),
      
      actionButton("toggle_article27", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article27 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties recognize the right of persons with disabilities to work, on an equal basis with others; this includes the right to the opportunity to gain a living by work freely chosen or accepted in a labour market and work environment that is open, inclusive and accessible to persons with disabilities. States Parties shall safeguard and promote the realization of the right to work, including for those who acquire a disability during the course of employment, by taking appropriate steps, including through legislation, to, inter alia:"),
  
  tags$ol(type="a",
    
    tags$li("Prohibit discrimination on the basis of disability with regard to all matters concerning all forms of employment, including conditions of recruitment, hiring and employment, continuance of employment, career advancement and safe and healthy working conditions;"),
    
    tags$li("Protect the rights of persons with disabilities, on an equal basis with others, to just and favourable conditions of work, including equal opportunities and equal remuneration for work of equal value, safe and healthy working conditions, including protection from harassment, and the redress of grievances;"),
    
    tags$li("Ensure that persons with disabilities are able to exercise their labour and trade union rights on an equal basis with others;"),
    
    tags$li("Enable persons with disabilities to have effective access to general technical and vocational guidance programmes, placement services and vocational and continuing training;"),
    
    tags$li("Promote employment opportunities and career advancement for persons with disabilities in the labour market, as well as assistance in finding, obtaining, maintaining and returning to employment;"),
    
    tags$li("Promote opportunities for self-employment, entrepreneurship, the development of cooperatives and starting one’s own business;"),
    
    tags$li("Employ persons with disabilities in the public sector;"),
    
    tags$li("Promote the employment of persons with disabilities in the private sector through appropriate policies and measures, which may include affirmative action programmes, incentives and other measures;"),
    
    tags$li("Ensure that reasonable accommodation is provided to persons with disabilities in the workplace;"),
    
    tags$li("Promote the acquisition by persons with disabilities of work experience in the open labour market;"),
    
    tags$li("Promote vocational and professional rehabilitation, job retention and return-to-work programmes for persons with disabilities.")),
  
  tags$li("States Parties shall ensure that persons with disabilities are not held in slavery or in servitude, and are protected, on an equal basis with others, from forced or compulsory labour.")
  
      ))),
  
  # article28 ---------------------------------------------------------------  
    tabItem(tabName = "article28",
      h2("Article 28 - Adequate standard of living and social protection"),
      
      fluidRow(valueBoxOutput("article28_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article28_details")))),
      
      actionButton("toggle_article28", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article28 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties recognize the right of persons with disabilities to an adequate standard of living for themselves and their families, including adequate food, clothing and housing, and to the continuous improvement of living conditions, and shall take appropriate steps to safeguard and promote the realization of this right without discrimination on the basis of disability."),
  
  tags$li("States Parties recognize the right of persons with disabilities to social protection and to the enjoyment of that right without discrimination on the basis of disability, and shall take appropriate steps to safeguard and promote the realization of this right, including measures:"),
  
  tags$ol(type="a",
    
    tags$li("To ensure equal access by persons with disabilities to clean water services, and to ensure access to appropriate and affordable services, devices and other assistance for disability-related needs;"),
    
    tags$li("To ensure access by persons with disabilities, in particular women and girls with disabilities and older persons with disabilities, to social protection programmes and poverty reduction programmes;"),
    
    tags$li("To ensure access by persons with disabilities and their families living in situations of poverty to assistance from the State with disability-related expenses, including adequate training, counselling, financial assistance and respite care;"),
    
    tags$li("To ensure access by persons with disabilities to public housing programmes;"),
    
    tags$li("To ensure equal access by persons with disabilities to retirement benefits and programmes."))
  
      ))),
    
  
  # article29 ---------------------------------------------------------------
    tabItem(tabName = "article29",
      h2("Article 29 - Participation in political and public life"),
      
      fluidRow(valueBoxOutput("article29_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article29_details")))),
      
      actionButton("toggle_article29", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article29 % 2 == 1",

      tags$ol(
  
  p("States Parties shall guarantee to persons with disabilities political rights and the opportunity to enjoy them on an equal basis with others, and shall undertake:"),
  
  
  tags$ol(type="a",
    
    tags$li("To ensure that persons with disabilities can effectively and fully participate in political and public life on an equal basis with others, directly or through freely chosen representatives, including the right and opportunity for persons with disabilities to vote and be elected, inter alia, by:"),
    
    tags$ol(type="i",
      
      tags$li("Ensuring that voting procedures, facilities and materials are appropriate, accessible and easy to understand and use;"),
      
      tags$li("Protecting the right of persons with disabilities to vote by secret ballot in elections and public referendums without intimidation, and to stand for elections, to effectively hold office and perform all public functions at all levels of government, facilitating the use of assistive and new technologies where appropriate;"),
      
      tags$li("Guaranteeing the free expression of the will of persons with disabilities as electors and to this end, where necessary, at their request, allowing assistance in voting by a person of their own choice;")),
    
    tags$li("To promote actively an environment in which persons with disabilities can effectively and fully participate in the conduct of public affairs, without discrimination and on an equal basis with others, and encourage their participation in public affairs, including:"),
    
    tags$ol(type="i",
      
      tags$li("Participation in non-governmental organizations and associations concerned with the public and political life of the country, and in the activities and administration of political parties;"), 
      
      tags$li("Forming and joining organizations of persons with disabilities to represent persons with disabilities at international, national, regional and local levels."))) 
  
      ))),
  
  # article30 ---------------------------------------------------------------  
    tabItem(tabName = "article30",
      h2("Article 30 - Participation in cultural life, recreation leisure and sport"),
    
      fluidRow(valueBoxOutput("article30_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article30_details")))),
      
      actionButton("toggle_article30", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article30 % 2 == 1",
          
      tags$ol(
  
  tags$li("States Parties recognize the right of persons with disabilities to take part on an equal basis with others in cultural life, and shall take all appropriate measures to ensure that persons with disabilities:"),
  
  tags$ol(type="a",
    
    tags$li("Enjoy access to cultural materials in accessible formats;"),
    
    tags$li("Enjoy access to television programmes, films, theatre and other cultural activities, in accessible formats;"),
    
    tags$li("Enjoy access to places for cultural performances or services, such as theatres, museums, cinemas, libraries and tourism services, and, as far as possible, enjoy access to monuments and sites of national cultural importance.")),
  
  tags$li("States Parties shall take appropriate measures to enable persons with disabilities to have the opportunity to develop and utilize their creative, artistic and intellectual potential, not only for their own benefit, but also for the enrichment of society."),
  
  tags$li("States Parties shall take all appropriate steps, in accordance with international law, to ensure that laws protecting intellectual property rights do not constitute an unreasonable or discriminatory barrier to access by persons with disabilities to cultural materials."),
  
  tags$li("Persons with disabilities shall be entitled, on an equal basis with others, to recognition and support of their specific cultural and linguistic identity, including sign languages and deaf culture."),
  
  tags$li("With a view to enabling persons with disabilities to participate on an equal basis with others in recreational, leisure and sporting activities, States Parties shall take appropriate measures:"),
  
  tags$ol(type="a",
    
    tags$li("To encourage and promote the participation, to the fullest extent possible, of persons with disabilities in mainstream sporting activities at all levels;"),
    
    tags$li("To ensure that persons with disabilities have an opportunity to organize, develop and participate in disability-specific sporting and recreational activities and, to this end, encourage the provision, on an equal basis with others, of appropriate instruction, training and resources;"),
    
    tags$li("To ensure that persons with disabilities have access to sporting, recreational and tourism venues;"),
    
    tags$li("To ensure that children with disabilities have equal access with other children to participation in play, recreation and leisure and sporting activities, including those activities in the school system;"),
    
    tags$li("To ensure that persons with disabilities have access to services from those involved in the organization of recreational, tourism, leisure and sporting activities."))
  
      ))),
    
  
  # article31 ---------------------------------------------------------------
    tabItem(tabName = "article31",
      h2("Article 31 - Statistics and data collection"),
      
      fluidRow(valueBoxOutput("article31_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article31_details")))),
      
      actionButton("toggle_article31", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article31 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties undertake to collect appropriate information, including statistical and research data, to enable them to formulate and implement policies to give effect to the present Convention. The process of collecting and maintaining this information shall:"),
  
  tags$li("Comply with legally established safeguards, including legislation on data protection, to ensure confidentiality and respect for the privacy of persons with disabilities;"),
  
  tags$li("Comply with internationally accepted norms to protect human rights and fundamental freedoms and ethical principles in the collection and use of statistics."),
  
  tags$li("The information collected in accordance with this article shall be disaggregated, as appropriate, and used to help assess the implementation of States Parties’ obligations under the present Convention and to identify and address the barriers faced by persons with disabilities in exercising their rights."),
  
  tags$li("States Parties shall assume responsibility for the dissemination of these statistics and ensure their accessibility to persons with disabilities and others.")
  
        )
    )
  ),
    
  
  # article32 --------------------------------------------------------------- 
    tabItem(tabName = "article32",
      h2("Article 32 - International cooperation"),
      
      fluidRow(valueBoxOutput("article32_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article32_details")))),
      
      actionButton("toggle_article32", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article32 % 2 == 1",

      tags$ol(
  
  tags$li("States Parties recognize the importance of international cooperation and its promotion, in support of national efforts for the realization of the purpose and objectives of the present Convention, and will undertake appropriate and effective measures in this regard, between and among States and, as appropriate, in partnership with relevant international and regional organizations and civil society, in particular organizations of persons with disabilities. Such measures could include, inter alia:"),
  
  tags$ol(type="a",
    
    tags$li("Ensuring that international cooperation, including international development programmes, is inclusive of and accessible to persons with disabilities;"),
    
    tags$li("Facilitating and supporting capacity-building, including through the exchange and sharing of information, experiences, training programmes and best practices;"),
    
    tags$li("Facilitating cooperation in research and access to scientific and technical knowledge;"),
    
    tags$li("Providing, as appropriate, technical and economic assistance, including by facilitating access to and sharing of accessible and assistive technologies, and through the transfer of technologies.")
    
  ),
  
  tags$li("The provisions of this article are without prejudice to the obligations of each State Party to fulfil its obligations under the present Convention.")
  
      )
  )
),
    
  
  # article33 ---------------------------------------------------------------  
    tabItem(tabName = "article33",
      h2("Article 33 - National implementation and monitoring"),
      
      fluidRow(valueBoxOutput("article33_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article33_details")))),
      
      actionButton("toggle_article33", "Show/Hide Article Text"),
      conditionalPanel(condition = "input.toggle_article33 % 2 == 1",
          
      tags$ol(
  
  tags$li("States Parties, in accordance with their system of organization, shall designate one or more focal points within government for matters relating to the implementation of the present Convention, and shall give due consideration to the establishment or designation of a coordination mechanism within government to facilitate related action in different sectors and at different levels."),
  
  tags$li("States Parties shall, in accordance with their legal and administrative systems, maintain, strengthen, designate or establish within the State Party, a framework, including one or more independent mechanisms, as appropriate, to promote, protect and monitor implementation of the present Convention. When designating or establishing such a mechanism, States Parties shall take into account the principles relating to the status and functioning of national institutions for protection and promotion of human rights."),
  
  tags$li("Civil society, in particular persons with disabilities and their representative organizations, shall be involved and participate fully in the monitoring process.")
  
      )
      )
      
    ),
    
  
  # article34 ---------------------------------------------------------------  
    tabItem(tabName = "article34",
      h2("Article 34 - Committee on the Rights of Persons with Disabilities"),
      
      fluidRow(valueBoxOutput("article34_rating", width = 8)),
      
            fluidRow(column(10, offset=1, h4(textOutput("article34_details")))),
      
      actionButton("toggle_article34", "Show/Hide Article Text"),
          conditionalPanel(condition = "input.toggle_article34 % 2 == 1",
      
      tags$ol(
  
  tags$li("There shall be established a Committee on the Rights of Persons with Disabilities (hereafter referred to as “the Committee”) which shall carry out the functions hereinafter provided."),
  
  tags$li("The Committee shall consist, at the time of entry into force of the present Convention, of twelve experts. After an additional sixty ratifications or accessions to the Convention, the membership of the Committee shall increase by six members, attaining a maximum number of eighteen members."),
  
  tags$li("The members of the Committee shall serve in their personal capacity and shall be of high moral standing and recognized competence and experience in the field covered by the present Convention. When nominating their candidates, States Parties are invited to give due consideration to the provision set out in article 4, paragraph 3, of the present Convention."),
  
  tags$li("The members of the Committee shall be elected by States Parties, consideration being given to equitable geographical distribution, representation of the different forms of civilization and of the principal legal systems, balanced gender representation and participation of experts with disabilities."),
  
  tags$li("The members of the Committee shall be elected by secret ballot from a list of persons nominated by the States Parties from among their nationals at meetings of the Conference of States Parties. At those meetings, for which two thirds of States Parties shall constitute a quorum, the persons elected to the Committee shall be those who obtain the largest number of votes and an absolute majority of the votes of the representatives of States Parties present and voting."),
  
  tags$li("The initial election shall be held no later than six months after the date of entry into force of the present Convention. At least four months before the date of each election, the Secretary-General of the United Nations shall address a letter to the States Parties inviting them to submit the nominations within two months. The Secretary-General shall subsequently prepare a list in alphabetical order of all persons thus nominated, indicating the State Parties which have nominated them, and shall submit it to the States Parties to the present Convention."),
  
  tags$li("The members of the Committee shall be elected for a term of four years. They shall be eligible for re-election once. However, the term of six of the members elected at the first election shall expire at the end of two years; immediately after the first election, the names of these six members shall be chosen by lot by the chairperson of the meeting referred to in paragraph 5 of this article."),
  
  tags$li("The election of the six additional members of the Committee shall be held on the occasion of regular elections, in accordance with the relevant provisions of this article."),
  
  tags$li("If a member of the Committee dies or resigns or declares that for any other cause she or he can no longer perform her or his duties, the State Party which nominated the member shall appoint another expert possessing the qualifications and meeting the requirements set out in the relevant provisions of this article, to serve for the remainder of the term."),
  
  tags$li("The Committee shall establish its own rules of procedure."),
  
  tags$li("The Secretary-General of the United Nations shall provide the necessary staff and facilities for the effective performance of the functions of the Committee under the present Convention, and shall convene its initial meeting."),
  
  tags$li("With the approval of the General Assembly of the United Nations, the members of the Committee established under the present Convention shall receive emoluments from United Nations resources on such terms and conditions as the Assembly may decide, having regard to the importance of the Committee’s responsibilities."),
  
  tags$li("The members of the Committee shall be entitled to the facilities, privileges and immunities of experts on mission for the United Nations as laid down in the relevant sections of the Convention on the Privileges and Immunities of the United Nations.")
      )
  
          )
      
    )


# Final parans ------------------------------------------------------------

    )
  
  )
      
)
      
