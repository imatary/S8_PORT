.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;
.super Ljava/lang/Object;
.source "SpenPenInterface.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;
    }
.end annotation


# static fields
.field public static final PEN_ATTRIBUTE_ADVANCED_SETTING:I = 0x4

.field public static final PEN_ATTRIBUTE_ALPHA:I = 0x1

.field public static final PEN_ATTRIBUTE_COLOR:I = 0x2

.field public static final PEN_ATTRIBUTE_CURVE:I = 0x3

.field public static final PEN_ATTRIBUTE_SIZE:I


# virtual methods
.method public abstract draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
.end method

.method public abstract getAdvancedSetting()Ljava/lang/String;
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getColor()I
.end method

.method public abstract getMaxSettingValue()F
.end method

.method public abstract getMinSettingValue()F
.end method

.method public abstract getPenAttribute(I)Z
.end method

.method public abstract getSize()F
.end method

.method public abstract getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
.end method

.method public abstract hideAdvancedSetting()V
.end method

.method public abstract isCurveEnabled()Z
.end method

.method public abstract redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
.end method

.method public abstract setAdvancedSetting(Ljava/lang/String;)V
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setCurveEnabled(Z)V
.end method

.method public abstract setReferenceBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setScreenResolution(II)V
.end method

.method public abstract setSize(F)V
.end method

.method public abstract showAdvancedSetting(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;Landroid/view/ViewGroup;)V
.end method
