.class public interface abstract Lcom/samsung/android/sdk/pen/engine/SpenSimpleViewInterface;
.super Ljava/lang/Object;
.source "SpenSimpleViewInterface.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewSelectionInterface;
.implements Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;


# virtual methods
.method public abstract cancelStroke()V
.end method

.method public abstract captureCurrentView(Z)Landroid/graphics/Bitmap;
.end method

.method public abstract capturePage(FI)Landroid/graphics/Bitmap;
.end method

.method public abstract close()V
.end method

.method public abstract getBlankColor()I
.end method

.method public abstract getControl()Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end method

.method public abstract getMaxZoomRatio()F
.end method

.method public abstract getMinZoomRatio()F
.end method

.method public abstract getPan()Landroid/graphics/PointF;
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract isScrollBarEnabled()Z
.end method

.method public abstract isToolTipEnabled()Z
.end method

.method public abstract isZoomable()Z
.end method

.method public abstract setBlankColor(I)V
.end method

.method public abstract setColorPickerListener(Lcom/samsung/android/sdk/pen/engine/SpenColorPickerListener;)V
.end method

.method public abstract setControl(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
.end method

.method public abstract setControlListener(Lcom/samsung/android/sdk/pen/engine/SpenControlListener;)V
.end method

.method public abstract setForceStretchView(ZII)Z
.end method

.method public abstract setLongPressListener(Lcom/samsung/android/sdk/pen/engine/SpenLongPressListener;)V
.end method

.method public abstract setMaxZoomRatio(F)Z
.end method

.method public abstract setMinZoomRatio(F)Z
.end method

.method public abstract setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Z)Z
.end method

.method public abstract setPan(Landroid/graphics/PointF;)V
.end method

.method public abstract setPenChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenPenChangeListener;)V
.end method

.method public abstract setPenDetachmentListener(Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;)V
.end method

.method public abstract setPreTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
.end method

.method public abstract setRemoverChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenRemoverChangeListener;)V
.end method

.method public abstract setScrollBarEnabled(Z)V
.end method

.method public abstract setSelectionChangeListener(Lcom/samsung/android/sdk/pen/engine/SpenSelectionChangeListener;)V
.end method

.method public abstract setSetPageDocListener(Lcom/samsung/android/sdk/pen/engine/SpenSetPageDocListener;)V
.end method

.method public abstract setToolTipEnabled(Z)V
.end method

.method public abstract setTouchListener(Lcom/samsung/android/sdk/pen/engine/SpenTouchListener;)V
.end method

.method public abstract setTransparentBackgroundColor(ZI)Z
.end method

.method public abstract setTransparentBackgroundImage(Landroid/graphics/Bitmap;I)Z
.end method

.method public abstract setZoom(FFF)V
.end method

.method public abstract setZoomListener(Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;)V
.end method

.method public abstract setZoomable(Z)V
.end method

.method public abstract update()V
.end method

.method public abstract updateRedo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
.end method

.method public abstract updateUndo([Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
.end method
