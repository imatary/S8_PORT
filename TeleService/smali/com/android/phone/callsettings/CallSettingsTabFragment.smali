.class public Lcom/android/phone/callsettings/CallSettingsTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsTabFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mSelectedTabPosition:I

.field public static mTabCount:I

.field public static mTabHost:Landroid/widget/TabHost;

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private SIM1fragment:Landroid/app/Fragment;

.field private SIM2fragment:Landroid/app/Fragment;

.field private mActionBar:Landroid/app/ActionBar;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    return-void
.end method

.method private UpdateTabIndicator(I)V
    .locals 5

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {p1, v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "CallSettingsTabFragment"

    const-string/jumbo v3, "Can not update TabIndicaotor mTabHost == null"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 12

    const v11, 0x1020006

    const/4 v6, 0x3

    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "CallSettingsTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupTab "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    if-ne v3, v6, :cond_0

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-nez p2, :cond_b

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v5, "tab_slot1"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p2, v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p2, v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    :goto_1
    return-void

    :cond_0
    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.GsmUmtsVideoCallForwardOptions"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v3

    if-ne v3, v8, :cond_3

    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CdmaAdditionalCallOptions"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const v3, 0x7f0d0359

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-eq p2, v8, :cond_2

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v3

    if-ne v3, v6, :cond_5

    if-eqz p2, :cond_2

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v3

    if-ne v3, v6, :cond_6

    if-eq p2, v8, :cond_2

    :cond_6
    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    const-string/jumbo v3, "is_voicemail_duos"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0d0350

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    const-string/jumbo v3, "is_ringtone_duos"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.RingtoneKeytoneSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0d052a

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.SubNumberManager"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0d0d1b

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v3, "CallSettingsTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupTab : no menu  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-ne p2, v8, :cond_c

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    sget-object v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v5, "tab_slot2"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p2, v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-object v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p2, v10}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "CallSettingsTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wrong Tab index!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "CallSettingsTabFragment"

    const-string/jumbo v3, "oncreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMenuId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_1

    const-string/jumbo v2, "selected_tab_position"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    :goto_0
    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSelectedTabPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mTabCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    sput v6, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    sput v7, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string/jumbo v1, "CallSettingsTabFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f3

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    sput-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v1, "selected_tab_position"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    :cond_2
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallSettingsTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "CallSettingsTabFragment"

    const-string/jumbo v1, "OnResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->UpdateTabIndicator(I)V

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->UpdateTabIndicator(I)V

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    return-void

    :cond_0
    const-string/jumbo v0, "CallSettingsTabFragment"

    const-string/jumbo v1, "Dual SIM status off"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->finish()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_tab_position"

    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x7f10029f

    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTabChanged tabId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mSelectedTabPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "tab_slot1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput v7, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    :goto_0
    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTabChanged mSelectedTabPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTabChanged() : SIM1fragment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", SIM2fragment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    if-ne v2, v8, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vcf0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vcf1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vcf0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    const-string/jumbo v2, "CallSettingsTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTabChanged() : mSelectedTabPosition["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_3
    sput v6, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vcf1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vdf0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vdf1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_8
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_9
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vdf0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vdf1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_d
    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1d

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "add0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "add1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_f
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v6, :cond_11

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_11

    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "add0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eq v2, v6, :cond_10

    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v8, :cond_13

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eqz v2, :cond_10

    :cond_13
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v8, :cond_14

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eq v2, v6, :cond_10

    :cond_14
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "add0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_15
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_16
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v6, :cond_18

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_18

    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "add1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eq v2, v6, :cond_17

    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v8, :cond_1a

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eqz v2, :cond_17

    :cond_1a
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v2

    if-ne v2, v8, :cond_1b

    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-eq v2, v6, :cond_17

    :cond_1b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "add1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_1c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_1d
    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_23

    const-string/jumbo v2, "is_voicemail_duos"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vom0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "vom1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1f
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_20

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vom0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_20
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_21
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_22

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "vom1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_22
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_23
    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_29

    const-string/jumbo v2, "is_ringtone_duos"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "rtn0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "rtn1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_24
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_25
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_26

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "rtn0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_26
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_27
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_28

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "rtn1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_28
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_29
    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "aln0"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "aln1"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2a
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2b
    sget v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "aln0"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_2c
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_2d
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v2, :cond_2e

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    const-string/jumbo v3, "aln1"

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1

    :cond_2e
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_1
.end method
