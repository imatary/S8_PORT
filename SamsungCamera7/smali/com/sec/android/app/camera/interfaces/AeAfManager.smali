.class public interface abstract Lcom/sec/android/app/camera/interfaces/AeAfManager;
.super Ljava/lang/Object;
.source "AeAfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;,
        Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;,
        Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;,
        Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;
    }
.end annotation


# static fields
.field public static final AF_FOCUSED:I = 0x2

.field public static final AF_FOCUS_MOVING:I = 0x3

.field public static final AF_SCANNING:I = 0x1

.field public static final AF_UNFOCUSED:I = 0x0

.field public static final TOUCH_AE_LOCKED:I = 0x1

.field public static final TOUCH_AE_LOCKED_SCENE_DEPENDENTLY:I = 0x2

.field public static final TOUCH_AE_LOCK_MOVING:I = 0x3

.field public static final TOUCH_AE_UNLOCKED:I


# virtual methods
.method public abstract getAfState()I
.end method

.method public abstract getTouchAeLockState()I
.end method

.method public abstract isTouchAfActive()Z
.end method

.method public abstract onActivityTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onShutterKeyPressed()V
.end method

.method public abstract removeAfMessages()V
.end method

.method public abstract removeCallbacksAndMessages()V
.end method

.method public abstract removeTouchAeMessage()V
.end method

.method public abstract resetAfIndicatorPosition()V
.end method

.method public abstract resetTouchAE()V
.end method

.method public abstract resetTouchAF()V
.end method

.method public abstract resetTouchAfIfNeeded()V
.end method

.method public abstract restartTouchAF()V
.end method

.method public abstract setAeEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;)V
.end method

.method public abstract setAfEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;)V
.end method

.method public abstract setAfState(I)V
.end method

.method public abstract setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V
.end method

.method public abstract setTouchAfPosition(II)V
.end method

.method public abstract setTrackingAfListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;)V
.end method

.method public abstract startResetTouchAeTimer()V
.end method
