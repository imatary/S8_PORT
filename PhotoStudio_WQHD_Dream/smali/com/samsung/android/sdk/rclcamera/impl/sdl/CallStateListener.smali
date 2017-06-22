.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;
    }
.end annotation


# instance fields
.field public mCallStateChangedListener:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->mCallStateChangedListener:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->mCallStateChangedListener:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;->onCallStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnCallStateChangedListener(Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener;->mCallStateChangedListener:Lcom/samsung/android/sdk/rclcamera/impl/sdl/CallStateListener$onCallStateChangedListener;

    return-void
.end method
