.class public Lcom/sec/android/app/camera/widget/gl/ProItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "ProItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProItem"


# instance fields
.field private final PRO_ITEM_TEXT_COLOR:I

.field private final PRO_ITEM_TEXT_FONT_SIZE:I

.field private final PRO_ITEM_TEXT_HEIGHT:I

.field private final PRO_ITEM_TEXT_POS_Y:I

.field private final PRO_ITEM_TEXT_SELECTED_COLOR:I

.field private final PRO_ITEM_TEXT_STROKE_COLOR:I

.field private final PRO_ITEM_TEXT_STROKE_WIDTH:I

.field private final PRO_ITEM_WIDTH:I

.field private mButton:Lcom/samsung/android/glview/GLSelectButton;

.field private mCommandId:I

.field private mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

.field private mText:Lcom/samsung/android/glview/GLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const v0, 0x7f0a0294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    const v0, 0x7f0a0292

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    const v0, 0x7f0a0293

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    const v0, 0x7f0a0291

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    const v0, 0x7f0d002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    const v0, 0x7f0d0041

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    invoke-virtual {p6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->init()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    return-void
.end method

.method protected clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    :cond_1
    return-void
.end method

.method protected init()V
    .locals 9

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLSelectButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLSelectButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setPressedTint(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setButtonShapeVisibility(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSelectButton;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;->onProItemSelected(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mCommandId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;->onProItemDeselected(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    goto :goto_0
.end method

.method public setDim(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mDimmed:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSelectButton;->setDim(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mProItemClickListener:Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setSelected(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mButton:Lcom/samsung/android/glview/GLSelectButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLSelectButton;->setSubTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ProItem;->mText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    :cond_0
    return-void
.end method
