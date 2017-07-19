.class public Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "EffectStickerCategoryItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;,
        Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectStickerCategoryItem"


# instance fields
.field private final STICKER_DELETE_ICON_WIDTH:I

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mCategoryItemSelectListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;

.field private mDeleteButton:Lcom/samsung/android/glview/GLButton;

.field private mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;

.field private mIsDownloaded:Z

.field private final mMenuId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0a03a2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v0, 0xa5

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mMenuId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->init()V

    return-void
.end method

.method private isCurrentMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mMenuId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mMenuId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    return-void
.end method

.method protected clearContent()V
    .locals 0

    return-void
.end method

.method public getButton()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    return-object v0
.end method

.method protected init()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v1, v1, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v1, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getHeight()F

    move-result v6

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mIsDownloaded:Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSelectButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSelectButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSelectButton;->setObjectTag(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setSelect(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mIsDownloaded:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    int-to-float v14, v1

    const v15, 0x7f02013c

    const v16, 0x7f02013d

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    const v2, 0x7f090275

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    return-void

    :cond_2
    new-instance v9, Lcom/samsung/android/glview/GLSelectButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    goto/16 :goto_0

    :cond_3
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    int-to-float v2, v2

    sub-float v11, v1, v2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->STICKER_DELETE_ICON_WIDTH:I

    int-to-float v14, v1

    const v15, 0x7f02013c

    const v16, 0x7f02013d

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1
.end method

.method public isDownloaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mIsDownloaded:Z

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mMenuId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isCurrentMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setSelect(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;->onDeleteClick(Lcom/sec/android/app/camera/resourcedata/StickerMenuResourceBundle;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setSelect(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryItemSelectListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryItemSelectListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;->onCategoryItemSelected(Lcom/samsung/android/glview/GLView;I)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategoryItemSelectListener(Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryItemSelectListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;

    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDeleteClickListener(Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mDeleteClickListener:Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;

    return-void
.end method

.method public setDim(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDim(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setDraggable(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    move-result v0

    return v0
.end method

.method public setSelect(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->mCategoryButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    :cond_0
    return-void
.end method
