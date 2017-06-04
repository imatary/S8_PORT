.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;
.super Landroid/app/Activity;
.source "CountryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;
    }
.end annotation


# static fields
.field public static final POPUP_TEXT_COLOR:I


# instance fields
.field private final INDEX_START:Ljava/lang/String;

.field public final TEXT_COLOR:I

.field private final WRITE_CODE_COUNTRY:I

.field private allCountries:[Ljava/lang/CharSequence;

.field private countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

.field private countryCode:[Ljava/lang/CharSequence;

.field private countryISO:[Ljava/lang/CharSequence;

.field countryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field countryMap3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

.field private listRoot:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFilteredCountry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMode:I

.field private mNoSearchCountries:Landroid/view/View;

.field private needBackKey:Z

.field private selectedCountry:Ljava/lang/String;

.field textview:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "#00CDFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->POPUP_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->WRITE_CODE_COUNTRY:I

    const-string/jumbo v0, "#80979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->TEXT_COLOR:I

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    const-string/jumbo v0, "Z"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->INDEX_START:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->textview:[Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public finishActivity(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "PARAMS_COUNTRY_NAME"

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    return-void
.end method

.method public isRtlLayout()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p2, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v3, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "PARAMS_COUNTRY_CODE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v5, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_indexer_textsize_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x1a

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->textview:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->layout_indexer_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x400

    const/16 v17, 0x400

    invoke-virtual/range {v15 .. v17}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->activity_country:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->setContentView(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->needBackKey:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->regist_select_country_or_region_code:I

    invoke-virtual/range {v16 .. v17}, Landroid/app/ActionBar;->setTitle(I)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->listRoot:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->editCountrySearch:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    move-object/from16 v16, v0

    const v17, 0x10000006

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    move-object/from16 v16, v0

    const/16 v17, 0x4000

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->setInputType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_ISO_country_code_Letter2:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->country_list_no_search_result:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country_code:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string/jumbo v17, "extra_hide_country_calling_code"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x400

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap2:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " (+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->list:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ListView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    new-instance v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string/jumbo v17, "mode"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mMode:I

    :cond_6
    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->country_scrollview:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->ContactListItemView:[I

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$styleable;->ContactListItemView_tw_index_scroll_theme:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "Z"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v14, 0x0

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v14, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v14, v14, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexHandleChar([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setSimpleIndexWidth(I)V

    invoke-virtual {v13}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->invalidate()V

    new-instance v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;Ljava/util/Map;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexSelectedListener;)V

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v16

    if-eqz v16, :cond_b

    sget-object v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PERMISSIONS_SAMSUNG_DEVICES:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "It doesn\'t have permissions..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "CountryActivity"

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    :cond_a
    :goto_5
    return-void

    :cond_b
    sget-object v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PHONE_STATE_PERMISSIONS_NON_SAMSUNG_DEVICES:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "It doesn\'t have permissions..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "CountryActivity"

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->text1:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap3:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectedCountry ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->selectedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " selectedISO ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CountryActivity"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finishActivity(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->editCountry:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/TwSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    const-string/jumbo v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/HangulJamoUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->allCountries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->setSearchFilter(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->countryAdapter:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity$CountryAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mFilteredCountry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "YES"

    const-string/jumbo v3, "CountryActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return v5

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->listRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/CountryActivity;->mNoSearchCountries:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
