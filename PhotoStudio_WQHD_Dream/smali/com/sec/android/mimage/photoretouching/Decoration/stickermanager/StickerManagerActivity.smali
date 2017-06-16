.class public Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;
.super Landroid/app/Activity;
.source "StickerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_StickerManagerActivity"


# instance fields
.field private initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

.field private isIntitializing:Z

.field private isPressCtrl:Z

.field private mActivityContext:Landroid/content/Context;

.field private mBtnInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

.field private mLocale:Ljava/util/Locale;

.field private mStickerCancel:Landroid/widget/LinearLayout;

.field private mStickerDone:Landroid/widget/LinearLayout;

.field private mThumbnailList:[Landroid/graphics/Bitmap;

.field private saveButtonChanged:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isPressCtrl:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->done()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->cancel()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initialize()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z

    return p1
.end method

.method private adjustActionbarHeight()V
    .locals 4

    const v2, 0x7f0e024c

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0802ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private cancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->finish()V

    return-void
.end method

.method private checkThumbnailList()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    :cond_2
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getStickerManagerThumbnail(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private done()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->isButtonUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070182

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->updateDBOnSave()Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setResult(I)V

    goto :goto_0
.end method

.method private getCategoryProjection()[Ljava/lang/String;
    .locals 3

    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "initial_order"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "package_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_thumb_res"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_download"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "re_arranged_order"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_visible"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getStickerNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const-string v6, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerManagerPreloadResStrings:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v6, "sticker_strings"

    const-string v7, "xml"

    invoke-virtual {v1, v6, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->processXMLDataForStringRes(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "string"

    invoke-virtual {v1, v6, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, "PEDIT_StickerManagerActivity"

    const-string v7, "XML read null getStickerNames StickerManagerActivity"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v6, ""

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initActionBar()V
    .locals 8

    const v7, 0x7f0e024e

    const v6, 0x7f0e024d

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->adjustActionbarHeight()V

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    const v4, 0x7f0700da

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setCancelDoneShapeBackground()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    const v4, 0x7f070092

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getContenDescriptionButton(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$3;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private initButtons()V
    .locals 11

    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0, v9}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->init(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->checkThumbnailList()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getId()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getUse()Z

    move-result v5

    const-string v0, "PEDIT_StickerManagerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Putting it into the BCM id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getIndex()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v7, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getStickerNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gif"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->addButton(IILandroid/graphics/Bitmap;Ljava/lang/String;ZZLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-object v8, v0

    check-cast v8, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->updateLayout()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->updateScreenWidth(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->setButtonsPos()V

    return-void
.end method

.method private initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->loadInfoFromDB()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initButtons()V

    return-void
.end method

.method private onLanguageChanged()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getStickerNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->setText(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reInit()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->adjustActionbarHeight()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initButtons()V

    return-void
.end method

.method private setCancelDoneShapeBackground()V
    .locals 2

    const v1, 0x7f0206b7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isButtonBackgroundShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mStickerDone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private updateDBOnSave()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getButtonId()I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->isChecked()Z

    move-result v11

    move v7, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v11, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v12, "initial_order=?"

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "re_arranged_order"

    add-int/lit8 v14, v7, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "is_visible"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v10, v12, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v13, "PEDIT_StickerManagerActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sticker Activity update Sticker DB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "item_package_name = ?"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v14, "PEDIT_StickerManagerActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sticker Activity update Recent DB "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v13, "PEDIT_StickerManagerActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "save Sticker Activity exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v13, 0x1

    return v13
.end method


# virtual methods
.method public getStickerManagerThumbnail(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v8, 0x0

    const-string v7, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mStickerManagerPreloadRes:[I

    aget v8, v8, p1

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "sticker_list"

    const-string v9, "xml"

    invoke-virtual {v2, v7, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->processXMLData(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    :goto_1
    const/4 v1, 0x0

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->getItemRes()Ljava/lang/String;

    move-result-object v7

    const-string v9, "drawable"

    invoke-virtual {v1, v7, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v7, v8

    goto :goto_0

    :cond_2
    move-object v7, v8

    goto :goto_0
.end method

.method public loadInfoFromDB()V
    .locals 17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    const-string v4, "initial_order !=?"

    const/4 v8, 0x0

    const-string v6, "re_arranged_order ASC"

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getCategoryProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v7

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v13, v12

    :try_start_1
    const-string v1, "initial_order"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v1, "package_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "is_visible"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v13, 0x1

    :try_start_2
    invoke-direct {v2, v11, v15, v14, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "PEDIT_StickerManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sticker Manager DB init failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v10

    move v12, v13

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13

    const v12, 0x7f0e0061

    const v2, 0x7f0805e7

    const v4, 0x7f0800e6

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->adjustActionbarHeight()V

    const v0, 0x7f0e024d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateLinearLayoutParamsForView(Landroid/content/Context;Landroid/view/View;IIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->onLanguageChanged()V

    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-object v8, v0

    check-cast v8, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getButtonId()I

    move-result v10

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->setIndex(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->setmId(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants$StickerButtonInfo;->setUse(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->isButtonUpdated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->reInit()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->saveButtonChanged:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->setChange(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v3, 0x400

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const v2, 0x7f0300c5

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object p0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mActivityContext:Landroid/content/Context;

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isIntitializing:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    invoke-virtual {v2, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    :cond_1
    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->initEMTask:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity$InitEM;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mThumbnailList:[Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isPressCtrl:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isPressCtrl:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->selectAllItem()V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isPressCtrl:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mBtnInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->reInitCheckbox()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public selectAllItem()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->getButtonList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/StickerManagerActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/ButtonControlManager;->setChange(Z)V

    :cond_0
    invoke-virtual {v1, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/stickermanager/MyButton;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
