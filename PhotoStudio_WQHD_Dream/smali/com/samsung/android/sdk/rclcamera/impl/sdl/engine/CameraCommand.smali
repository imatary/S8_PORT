.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;
.super Ljava/lang/Object;
.source "CameraCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;
    }
.end annotation


# instance fields
.field public mCommand:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

.field public mListener:Ljava/lang/Runnable;

.field public mParams:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;->mCommand:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;->mListener:Ljava/lang/Runnable;

    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand;->mParams:[Ljava/lang/Object;

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
