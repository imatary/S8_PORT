.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "IrisPreveiwStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;
    }
.end annotation


# instance fields
.field isFlags:Ljava/lang/Boolean;

.field mGridView:Landroid/widget/GridView;

.field private mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

.field public final mIrisPreviewImages:[I

.field private mPreviewImgResIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mStyleNum:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->isFlags:Ljava/lang/Boolean;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    return-void

    :array_0
    .array-data 4
        0x7f0202f7
        0x7f0202f8
        0x7f0202f9
        0x7f0202fa
        0x7f0202fb
        0x7f0202fc
        0x7f0202fd
        0x7f0202fe
        0x7f0202ff
        0x7f020300
        0x7f020301
        0x7f020302
        0x7f020303
        0x7f020304
        0x7f020305
        0x7f020306
        0x7f020307
        0x7f020308
    .end array-data
.end method

.method public static getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "iris_mask/Iris_mask.qmg"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshLayout()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v6, 0x0

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0533

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a052e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v7, v4

    div-float v3, v7, v0

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    float-to-int v7, v3

    mul-int/lit8 v4, v7, 0x3

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    mul-int/lit8 v7, v4, 0x3

    sub-int v7, v5, v7

    mul-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v6, v7, 0x2

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v6, v9, v6, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    mul-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    sub-int/2addr v7, v2

    div-int/lit8 v6, v7, 0x2

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7, v6, v9, v6, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setContent()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    array-length v5, v5

    if-ne v1, v5, :cond_2

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getDrawableFromAssets(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewImages:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private viewInit()V
    .locals 4

    const-string/jumbo v0, "IrisPreveiwStyleFragment"

    const-string/jumbo v1, "viewInit"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1104d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mPreviewImgResIdList:Ljava/util/ArrayList;

    const v3, 0x7f040159

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mIrisPreviewAdapter:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_preview_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->refreshLayout()V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f0b089e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04015a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "themestore://MainPage?contentsType=themes"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->viewInit()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->setContent()V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->refreshLayout()V

    return-void
.end method
