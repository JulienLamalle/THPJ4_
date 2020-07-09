def launch

  puts " Quelle problématique veux tu résoudre ?"
  puts "Pour répondre à : Combien y a-t-il de handle dans cette array ? Tape 1 "
  puts "Pour répondre à : Quelle est le handle le plus court de cette liste ? Tape 2 "
  puts "Pour répondre à : Combien y-a-t'il de handle contenant 5 caractères ? Tape 3 "
  puts "Pour répondre à : Combien commencent par une majuscule (première lettre juste après le @) ? Tape 4 "
  puts "Pour trier la liste de handle par ordre alphabétique  Tape 5 "
  puts "Pour trier la liste de handle par taille des handle (les plus petits en premiers, les plus grands après) ? Tape 6 "
  puts "Pour répondre à : Quelle est la position dans l'array de la personne @epenser ? Tape 7 "
  puts "Pour que je te sorte une répartition des handle par taille de ces derniers Tape 8 "
  user_choice = gets.chomp.to_i
  return user_choice
  if user_choice < 1 || user_choice > 8
  exit
  end
end

def programme(user_choice)

  #Declaring array 

  handle = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

  #My conditions according to the choice of the user

  if user_choice == 1
    puts " Je compte : #{handle.count} handles dans ce array" #.count est une méthode comptant les éléments au sein d'un array
  end

  if user_choice == 2
    the_shortest = handle.min {|a,b| a.length <=> b.length} # Méthode me permettant de vérifier la taille de mes éléments dans mon tableau handle en prenant deux objets représentant le début et la fin de mon array 
    puts " Le handle le plus court c'est... attends... (Je cherche) AAAAAAAAH c'est donc : #{the_shortest} "
  end

  if user_choice == 3
    five_chars_max = [] #création d'un array 
    handle.each do |i|
      i.delete!("@") #Supprime les @ devant les handles pour pas que ce soit compté comme un caractère 
      if i.size == 5 #Méthode pour conditionner que mes éléments ne détiendront que 5 caractères 
        five_chars_max << i #Je mets mes éléments ne possédant que 5 caractères dans mon tableau préalablement créé
      end
    end
    puts "BOOOOOOOOON, visiblement tu veux connaître le nombre de handles ne possédant que 5 caractères, je me suis occupé de ça pour toi, tiens... Il y'en a : #{five_chars_max.count}"
  end

  if user_choice == 4
    count_up = 0
    handle.each do |i|
      chars = i[1]
      if /[[:upper:]]/.match(chars) #méthode pour vérifier que ma première lettre est en majuscule 
        count_up = count_up + 1 #Compteur qui s'incrémente de 1 dès que mon handle débute par une majuscule
      end
    end
    puts "Il y'a #{count_up} handles qui commencent par une majuscule"
  end

  if user_choice == 5
    sorted_handle = handle.sort_by(&:downcase)
    puts "Hein ?! Tu préfères que je te liste ce tableau dans l'ordre alphabétique ? Bouges pas, le voici : "
    sorted_handle.each do |i| #création d'une boucle qui lit les éléments 1 par 1 une fois les avoir rangés par ordre alphabétique pour éviter d'afficher un tableau qui fait un gros block
      puts "#{i}"
    end
  end

  if user_choice == 6
    handle_by_length = handle.sort_by(&:length)
    puts "Tu veux maintenant que je trie les handles par tailles ? Tiens je te les listes dans l'ordre donc : "
    handle_by_length.each do |i| #création d'une boucle qui lit les éléments 1 par 1 une fois les avoir classés par longueur pour éviter d'afficher un tableau qui fait un gros block
      puts " #{i} "
    end
  end

  if user_choice == 7
    position_of_epenser = handle.index("@epenser") + 1 #La position de epenser est égal à son index + 1 car dans un array la l'index de l'élément 1 est égal à 0
    puts " Epenser se trouve à la position numéro #{position_of_epenser}"
  end

  if user_choice == 8
    hashe = {} #Création d'un hashe vide
    count_chars = 0
    count_handle = 0
    handle.each do |i| #boucle permettant de passer un à un mes handle à l'intérieur de celle-ci 
      i.delete!("@") #Méthode supprimant les @ 
      chars = i.split('') # Création d'une variable séparant les lettres une à une 
      chars.each do |c|
      count_chars += 1
      end
      hashe[i] = count_chars
      count_chars = 0
    end
    puts "Les handles contenant combien de caractères voulez-vous ? (ils ont entre 3 et 32 caractères maximum)"
    nbchars = gets.chomp.to_i
    while nbchars < 3 || nbchars > 32 
      puts "Les handles contenant combien de caractères voulez-vous ? (ils ont entre 3 et 32 caractères maximum)"
      nbchars = gets.chomp.to_i
    end
      puts "Voici les handles avec #{nbchars} caractères"
    hashe.each do |handle, length|
      if length == nbchars
        count_handle = count_handle +=1 
        puts " #{handle}"
      end
    end
    puts "Il y'a #{count_handle} handles ayant #{nbchars} caractères "
  end
end


def perform
  user_choice = launch
  programme(user_choice)
end

perform