using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Final_SteveEd
{
    public partial class ViewCharacters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int numOfCharacters = 8;


            for (int i = 0; i < numOfCharacters; i++)
            {
                //Create the labels
                Label NameLabel = new Label();
                NameLabel.ID = "NameLabel";
                Label ClassLabel = new Label();
                ClassLabel.ID = "ClassLabel";
                Label LevelLabel = new Label();
                LevelLabel.ID = "LevelLabel";
                Label ExperienceLabel = new Label();
                ExperienceLabel.ID = "ExperienceLabel";
                Label GoldLabel = new Label();
                GoldLabel.ID = "GoldLabel";
                Label WeaponLabel = new Label();
                WeaponLabel.ID = "WeaponLabel";
                Label ArmourLabel = new Label();
                ArmourLabel.ID = "ArmourLabel";
                Label HpLabel = new Label();
                HpLabel.ID = "HpLabel";
                Label ManaLabel = new Label();
                ManaLabel.ID = "ManaLabel";
                Label SpeedLabel = new Label();
                SpeedLabel.ID = "SpeedLabel";
                Label StrengthLabel = new Label();
                StrengthLabel.ID = "StrengthLabel";
                Label DexterityLabel = new Label();
                DexterityLabel.ID = "DexterityLabel";
                Label ConstitutionLabel = new Label();
                ConstitutionLabel.ID = "ConstitutionLabel";
                Label CharismaLabel = new Label();
                CharismaLabel.ID = "CharismaLabel";
                Label IntelligenceLabel = new Label();
                IntelligenceLabel.ID = "IntelligenceLabel";
                Label WisdomLabel = new Label();
                WisdomLabel.ID = "WisdomLabel";
                Label CarryweightLabel = new Label();
                CarryweightLabel.ID = "CarryweightLabel";

                //variables to be filled by query
                string image = "Content/images/archer.jpg", name = "Steve", charclass = "Knight", gender = "mars", weapon = "Saber", armour = "Platinum";
                int level = 0, experience = 5830, gold = 0, carryweight = 0, hp = 0, mana = 0, speed = 0, strength = 0, dexterity = 0, constitution = 0, charisma = 0, intelligence = 0, wisdom = 0;

                //make the first slide have active class so carousel will work
                string active;
                if (i == 0) { active = " active"; } else active = "";

                //TODO 
                //create switch statement to assign gender male=mars female = venus other=genderless trans = transgender

                //Create the indicators to switch slides
                CharacterIndicatorsPlaceHolder.Controls.Add(new LiteralControl(
                    "<li data-target='#myCarousel' data-slide-to='" + (i) + "' class='" + (active) + "'></li>"
                    ));

                //setup the html for each slide
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl( "<div class='item" + (active) + "' id='carousel-characters'><div class='row '><div id='char-name'>"));
                CharacterSlidesPlaceholder.Controls.Add(NameLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("<i class='fa fa-" + (gender) + "-stroke'></i></div><div class='col-md-3'><img src='" + (image) + "'/></div> <div class='col-md-4 character-display-stats'><div><label>Class</label>"));
                CharacterSlidesPlaceholder.Controls.Add(ClassLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><label>Level</label>"));
                CharacterSlidesPlaceholder.Controls.Add(LevelLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><label>Experience</label>"));
                 CharacterSlidesPlaceholder.Controls.Add(ExperienceLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-money'><label>Gold</label></i>"));
                 CharacterSlidesPlaceholder.Controls.Add(GoldLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-scissors'><label>Weapon</label></i>"));
                 CharacterSlidesPlaceholder.Controls.Add(WeaponLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl(" </div><div><i class='fa fa-shield'><label>Armour</label></i>"));
                 CharacterSlidesPlaceholder.Controls.Add(ArmourLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl(" </div><div><i class='fa fa-briefcase'><label>CarryWeight</label></i>"));
                CharacterSlidesPlaceholder.Controls.Add(CarryweightLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div></div><div class='col-md-5 character-display-stats'><div><i class='fa fa-heart'><label>Hp</label></i>"));
                CharacterSlidesPlaceholder.Controls.Add(HpLabel);
              CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-magic'><label>Mana</label></i>"));
              CharacterSlidesPlaceholder.Controls.Add(ManaLabel);
            CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-bolt'><label>Speed</label></i>"));
            CharacterSlidesPlaceholder.Controls.Add(SpeedLabel);
          CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("   </div><div><i class='fa fa-diamond'><label>Strength</label></i>" ));
          CharacterSlidesPlaceholder.Controls.Add(StrengthLabel);
                CharacterSlidesPlaceholder.Controls.Add(ExperienceLabel);CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-leaf'><label>Dexterity</label></i>"));
                CharacterSlidesPlaceholder.Controls.Add(DexterityLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl(" </div><div><i class='fa fa-link'><label>Constitution</label></i>"));
                 CharacterSlidesPlaceholder.Controls.Add(ConstitutionLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div><div><i class='fa fa-eye'><label>Charisma</label></i>"));
                CharacterSlidesPlaceholder.Controls.Add(CharismaLabel);
                CharacterSlidesPlaceholder.Controls.Add(new LiteralControl(" </div><div><i class='fa fa-book'><label>Intelligence</label></i>"));
                CharacterSlidesPlaceholder.Controls.Add(IntelligenceLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl(" </div><div><i class='fa fa-graduation-cap'><label>Wisdom</label></i>"));
                 CharacterSlidesPlaceholder.Controls.Add(WisdomLabel);
                 CharacterSlidesPlaceholder.Controls.Add(new LiteralControl("</div></div></div></div>"));
                
                //assign values from db into each slide
                NameLabel.Text = name;
                ClassLabel.Text = charclass;
                LevelLabel.Text = level.ToString();
                ExperienceLabel.Text = experience.ToString();
                GoldLabel.Text = gold.ToString();
                WeaponLabel.Text = weapon;
                ArmourLabel.Text = armour;
                CarryweightLabel.Text = carryweight.ToString();
                HpLabel.Text = hp.ToString();
                ManaLabel.Text = mana.ToString();
                SpeedLabel.Text = speed.ToString();
                StrengthLabel.Text = strength.ToString();
                DexterityLabel.Text = dexterity.ToString();
                ConstitutionLabel.Text = constitution.ToString();
                CharismaLabel.Text = charisma.ToString();
                IntelligenceLabel.Text = intelligence.ToString();
                WisdomLabel.Text = wisdom.ToString();
            }//END for
        }//END pageLoad()
    }//END ViewCharacters class
}// END namespace
