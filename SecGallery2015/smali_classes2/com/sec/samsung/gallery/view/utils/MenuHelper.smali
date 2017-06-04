.class public Lcom/sec/samsung/gallery/view/utils/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static final AGIF_MAX_ITEM_LIMIT:I

.field public static final COLLAGE_MAX_ITEM_LIMIT:I = 0x6

.field public static final SHARE_MAX_ITEM_LIMIT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field public static final WECHAT_VIDEO_SHARE_MAX_ITEM_LIMIT:I = 0x1

.field private static mShowNearbyMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLimitMaxValueOfAGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->mShowNearbyMenu:Z

    return-void

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionViewFromItem(Landroid/view/Menu;I)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNearbyMenuStatus()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->mShowNearbyMenu:Z

    return v0
.end method

.method public static goToHelpGallery(Landroid/content/Context;)V
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceHelpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.gallery.help.HELPLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "helphub:section"

    const-string/jumbo v3, "gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MenuHelper"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static goToHome(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static isMenuItemVisible(Landroid/view/Menu;I)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v1

    goto :goto_0
.end method

.method public static isOnlyTextDisplayedOnActionBar(Landroid/content/Context;Landroid/util/DisplayMetrics;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isQvga(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandScapeModel(Landroid/content/Context;Landroid/util/DisplayMetrics;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_3

    move v2, v4

    :cond_2
    :goto_2
    move v5, v2

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setMenuItemEnable(Landroid/view/Menu;IZ)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_2

    const/16 v1, 0xff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    goto :goto_1
.end method

.method public static setMenuItemEnabled(Landroid/view/Menu;IZ)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setMenuItemIcon(Landroid/view/Menu;II)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setMenuItemLayout(Landroid/view/Menu;II)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setMenuItemShowAsAction(Landroid/view/Menu;II)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public static setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static updateContactUsMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f12027c

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportContactUs:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public static updateMenuOperation(Landroid/view/Menu;J)V
    .locals 35

    const-wide/16 v30, 0x1

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_2

    const/4 v11, 0x1

    :goto_0
    const-wide/16 v30, 0x4

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_3

    const/16 v28, 0x1

    :goto_1
    const-wide/16 v30, 0x20

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_4

    const/16 v27, 0x1

    :goto_2
    const-wide/16 v30, 0x200

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_5

    const/4 v14, 0x1

    :goto_3
    const-wide/high16 v30, 0x1000000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_6

    const/16 v21, 0x1

    :goto_4
    const-wide/high16 v30, 0x800000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_7

    const/16 v24, 0x1

    :goto_5
    const-wide/high16 v30, 0x8000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_8

    const/4 v9, 0x1

    :goto_6
    const-wide/high16 v30, 0x4000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_9

    const/16 v18, 0x1

    :goto_7
    const-wide v30, 0x200000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_a

    const/16 v29, 0x1

    :goto_8
    const-wide/high16 v30, 0x100000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_b

    const/4 v7, 0x1

    :goto_9
    const-wide/high16 v30, 0x40000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_c

    const/16 v22, 0x1

    :goto_a
    const-wide/16 v30, 0x400

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_d

    const/16 v16, 0x1

    :goto_b
    const-wide v30, 0x400000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_e

    const/4 v13, 0x1

    :goto_c
    const-wide v30, 0x800000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_f

    const/4 v12, 0x1

    :goto_d
    const-wide v30, 0x8000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_10

    const/16 v17, 0x1

    :goto_e
    const-wide/32 v30, 0x40000000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_11

    const/16 v20, 0x1

    :goto_f
    const-wide/32 v30, 0x20000000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_12

    const/16 v23, 0x1

    :goto_10
    const-wide/32 v30, 0x400000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_13

    const/4 v10, 0x1

    :goto_11
    const-wide/32 v30, 0x100000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_14

    const/16 v19, 0x1

    :goto_12
    const-wide/32 v30, 0x20000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_15

    const/16 v26, 0x1

    :goto_13
    const-wide v30, 0x20000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_16

    const/4 v15, 0x1

    :goto_14
    const-wide/high16 v30, 0x2000000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_17

    const/16 v25, 0x1

    :goto_15
    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_18

    const/4 v6, 0x1

    :goto_16
    const-wide v30, 0x2000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_19

    const/4 v8, 0x1

    :goto_17
    const-wide/32 v30, 0x4000000

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_1a

    const/4 v5, 0x1

    :goto_18
    const-wide/high16 v30, 0x10000000000000L

    and-long v30, v30, p1

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_1b

    const/4 v4, 0x1

    :goto_19
    const v30, 0x7f120275

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v11}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f120290

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202c2

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202ac

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202ab

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f120299

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v14}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f12027f

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f120276

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f12027d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v9}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f12027e

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202aa

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v31, 0x7f120294

    if-eqz v6, :cond_1c

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x1

    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v31, 0x7f120295

    if-eqz v6, :cond_1d

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAnimateAGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_1d

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-nez v30, :cond_1d

    const/16 v30, 0x1

    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v31, 0x7f120296

    if-eqz v8, :cond_1e

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCollageMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_1e

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-nez v30, :cond_1e

    const/16 v30, 0x1

    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f12029d

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202ae

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v12}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202af

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v13}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v30

    if-eqz v30, :cond_0

    const v30, 0x7f120280

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f120281

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    const v30, 0x7f1202c3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202c4

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202b8

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202ba

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v10}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202bc

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202b1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202a7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v15}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202ba

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v30, 0x7f1202dc

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportAddToEventMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_1

    const v30, 0x7f1202c5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    const v30, 0x7f1202c6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_8

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_a

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_e

    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_f

    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_10

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_12

    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_13

    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_15

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_16

    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_17

    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_18

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_19

    :cond_1c
    const/16 v30, 0x0

    goto/16 :goto_1a

    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_1b

    :cond_1e
    const/16 v30, 0x0

    goto/16 :goto_1c
.end method

.method public static updateNearbyDeviceMenu(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->mShowNearbyMenu:Z

    return-void
.end method

.method public static updateOptionForAddToEvent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f1202c5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportAddToEventMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    :cond_1
    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v6, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public static updateOptionForCopyMoveToAlbum(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportCopyMoveToAlbumMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f12027d

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12027e

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return-void
.end method

.method public static updateOptionForSettings(Landroid/view/Menu;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForSettings([Z)V

    const v1, 0x7f12027b

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-static {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f12029c

    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-static {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private static updateOptionForSettings([Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    aput-boolean v4, p0, v3

    aput-boolean v3, p0, v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    aput-boolean v3, p0, v3

    aput-boolean v3, p0, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    aput-boolean v4, p0, v3

    aput-boolean v3, p0, v4

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    aput-boolean v4, p0, v3

    aput-boolean v3, p0, v4

    goto :goto_0

    :cond_4
    aput-boolean v3, p0, v3

    aput-boolean v4, p0, v4

    goto :goto_0
.end method

.method public static updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f120298

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1

    const v5, 0x7f120296

    invoke-static {p1, v5, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v9, :cond_4

    if-nez v1, :cond_2

    move v5, v6

    :goto_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v1, :cond_3

    move v5, v6

    :goto_3
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    invoke-static {p1, v9, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public static updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V
    .locals 10

    const v9, 0x7f120297

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1

    const v5, 0x7f120295

    invoke-static {p1, v5, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v9, :cond_4

    if-nez v1, :cond_2

    move v5, v6

    :goto_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v1, :cond_3

    move v5, v6

    :goto_3
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :cond_4
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_5
    invoke-static {p1, v9, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public static updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V
    .locals 8

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGuestMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOXInstallMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f120277

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120278

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const-wide/32 v4, 0x1000000

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsJ1xlteModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120282

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    const v3, 0x7f120282

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f120282

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveOutKnox1On()Z

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveOutKnox2On()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const v3, 0x7f0a027d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120283

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    :cond_2
    const v3, 0x7f120283

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_3
    const v3, 0x7f120282

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120283

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_4
    const v3, 0x7f120282

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120283

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const-wide/32 v4, 0x2000000

    and-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveToKnox1On()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const v3, 0x7f0a0281

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120277

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    :cond_5
    const v3, 0x7f120277

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveToKnox2On()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2Name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const v3, 0x7f0a0281

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v3, 0x7f120278

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    const v3, 0x7f120278

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    :cond_6
    const v3, 0x7f120277

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isMoveToSecureFolderOn()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f0a0283

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    const v3, 0x7f0a027f

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_9
    const v3, 0x7f120277

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120278

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    :cond_a
    const v3, 0x7f120277

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120278

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120282

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v3, 0x7f120283

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0
.end method

.method public static updateOptionsForSecretBox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const v6, 0x7f120281

    const v5, 0x7f120280

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p0}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isReadyPrivateMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    invoke-static {p1, v5, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    invoke-static {p1, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_5
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method public static updateOptionsForShare(Landroid/view/Menu;I)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f120290

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-static {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    invoke-static {p0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    goto :goto_0
.end method
