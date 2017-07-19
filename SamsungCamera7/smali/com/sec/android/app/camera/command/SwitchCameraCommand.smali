.class public Lcom/sec/android/app/camera/command/SwitchCameraCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SwitchCameraCommand.java"


# instance fields
.field private final mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SwitchCameraCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SwitchCameraCommand;->mReceiver:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    const/16 v1, 0x1c40

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect(I)Z

    move-result v0

    return v0
.end method
