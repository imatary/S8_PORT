.class public Lcom/android/phone/operator/usa/AssistedDialingList;
.super Landroid/app/Activity;
.source "AssistedDialingList.java"


# static fields
.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;


# instance fields
.field cr:Landroid/content/ContentResolver;

.field private extra:Z

.field private issorted:Z

.field private la:Landroid/widget/SimpleCursorAdapter;

.field private list_sort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private list_sort_id:[I

.field private listview:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mCountry_name:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mMCC:Ljava/lang/String;

.field private search_list:Landroid/widget/FrameLayout;

.field private searchtext:Landroid/widget/SearchView;

.field private text_r:Landroid/widget/TextView;

.field textlength:I


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/usa/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/usa/AssistedDialingList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->extra:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->search_list:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->text_r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/usa/AssistedDialingList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->issorted:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/operator/usa/AssistedDialingList;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort_id:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/usa/AssistedDialingList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->issorted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCountry_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mMCC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/operator/usa/AssistedDialingList;->getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort:Ljava/util/ArrayList;

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->list_sort_id:[I

    iput-boolean v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->issorted:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->extra:Z

    return-void
.end method

.method private getHighlightedString(Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p3, :cond_1

    if-gt p2, p3, :cond_1

    :try_start_0
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AssistedDialingList"

    const-string/jumbo v3, "getHighlightedString - IndexOutOfBoundsException in setSpan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->setContentView(I)V

    const-string/jumbo v0, "AssistedDialingList"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;

    const v0, 0x7f100044

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;

    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;

    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->text_r:Landroid/widget/TextView;

    const v0, 0x7f100045

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->search_list:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "current_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d082d

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "current_country"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->extra:Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingList;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v2, "country"

    aput-object v2, v4, v6

    new-array v5, v9, [I

    const v2, 0x7f100042

    aput v2, v5, v6

    const v2, 0x7f040013

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->la:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/operator/usa/AssistedDialingList$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/AssistedDialingList$1;-><init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/operator/usa/AssistedDialingList$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/AssistedDialingList$2;-><init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/phone/operator/usa/AssistedDialingList$3;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/AssistedDialingList$3;-><init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->searchtext:Landroid/widget/SearchView;

    const v1, 0x10204a0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v0, Lcom/android/phone/operator/usa/AssistedDialingList$4;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/AssistedDialingList$4;-><init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "AssistedDialingList"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/usa/AssistedDialingList;->issorted:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const v0, 0x7f0d026c

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0275

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingList;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "AssistedDialingList"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "AssistedDialingList"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d026c

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    return-void
.end method
