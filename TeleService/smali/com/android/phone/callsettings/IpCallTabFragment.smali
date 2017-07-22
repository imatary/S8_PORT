.class public Lcom/android/phone/callsettings/IpCallTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCallTabFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mSelectedTabPosition:I

.field public static mTabCount:I

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private SIM1fragment:Landroid/app/Fragment;

.field private SIM2fragment:Landroid/app/Fragment;

.field private mActionBar:Landroid/app/ActionBar;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuId:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    return-void
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 13

    const v12, 0x1020011

    const v11, 0x1020006

    const/4 v10, 0x1

    const/16 v9, 0x64

    const/4 v8, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "IpCallTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupTab "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.IpCall"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0d0661

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCallTabFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

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

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p2, v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p2, v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "IpCallTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupTab : no menu  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-ne p2, v10, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

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

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p2, v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p2, v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "IpCallTabFragment"

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

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IpCallTabFragment"

    const-string/jumbo v4, "oncreate"

    invoke-static {v2, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCallTabFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    const-string/jumbo v2, "IpCallTabFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMenuId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_1

    const-string/jumbo v2, "selected_tab_position"

    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    const-string/jumbo v2, "tab_count"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    :goto_0
    const-string/jumbo v2, "IpCallTabFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSelectedTabPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    sput v7, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    sget v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    if-eqz v2, :cond_2

    sget v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    :goto_1
    sput v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const-string/jumbo v1, "IpCallTabFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f3

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim1Name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim2Name:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/phone/callsettings/IpCallTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/callsettings/IpCallTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/callsettings/IpCallTabFragment;->setupTab(Ljava/lang/String;I)V

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v1, "selected_tab_position"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    sget v2, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

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
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCallTabFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "IpCallTabFragment"

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "selected_tab_position"

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "tab_count"

    sget v1, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f10029c

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "IpCallTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTabChanged tabId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mSelectedTabPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "tab_slot1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput v5, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    :goto_0
    const-string/jumbo v1, "IpCallTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTabChanged mSelectedTabPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v1, "IpCallTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTabChanged() : SIM1fragment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", SIM2fragment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->mMenuId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ipc0"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ipc1"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    sget v1, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v1}, Lcom/android/phone/callsettings/IpCall;-><init>()V

    const-string/jumbo v2, "ipc0"

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCallTabFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    const-string/jumbo v1, "IpCallTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTabChanged() : mSelectedTabPosition["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_3
    sput v4, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM1fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v1}, Lcom/android/phone/callsettings/IpCall;-><init>()V

    const-string/jumbo v2, "ipc1"

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCallTabFragment;->SIM2fragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method
