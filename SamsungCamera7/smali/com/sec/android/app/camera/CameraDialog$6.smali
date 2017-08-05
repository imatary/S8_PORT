.class Lcom/sec/android/app/camera/CameraDialog$6;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$6;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$6;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraDialog;->access$300(Lcom/sec/android/app/camera/CameraDialog;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    const-string v0, "6112"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method
