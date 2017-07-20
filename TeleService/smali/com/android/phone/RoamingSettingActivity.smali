.class public Lcom/android/phone/RoamingSettingActivity;
.super Landroid/app/Activity;
.source "RoamingSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CELLULAR:I

.field private final WIFI:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentSelection:I

.field private mRadioButtonCellular:Landroid/widget/RadioButton;

.field private mRadioButtonWifi:Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRoamingPrefInfo:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method static synthetic -set0(Lcom/android/phone/RoamingSettingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/RoamingSettingActivity;->mCurrentSelection:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/RoamingSettingActivity;->CELLULAR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/RoamingSettingActivity;->WIFI:I

    return-void
.end method

.method private saveSelection()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_when_roaming"

    iget v2, p0, Lcom/android/phone/RoamingSettingActivity;->mCurrentSelection:I

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/RoamingSettingActivity;->saveSelection()V

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100254
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f100253

    const v6, 0x7f100252

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0a002f

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "RoamingSettingActivity"

    const-string/jumbo v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    const v1, 0x7f0400d1

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettingActivity;->setContentView(I)V

    const v1, 0x7f100254

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f100256

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mSaveButton:Landroid/widget/Button;

    const v1, 0x7f100250

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRoamingPrefInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioButtonCellular:Landroid/widget/RadioButton;

    invoke-virtual {p0, v7}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioButtonWifi:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100251

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_when_roaming"

    invoke-static {v1, v2, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    iput v5, p0, Lcom/android/phone/RoamingSettingActivity;->mCurrentSelection:I

    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/android/phone/RoamingSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettingActivity$1;-><init>(Lcom/android/phone/RoamingSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRoamingPrefInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioButtonCellular:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioButtonWifi:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/phone/RoamingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/RoamingSettingActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->check(I)V

    iput v4, p0, Lcom/android/phone/RoamingSettingActivity;->mCurrentSelection:I

    goto :goto_0
.end method
