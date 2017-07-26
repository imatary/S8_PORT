.class Lcom/sec/android/app/camera/menu/VisualInteraction$10;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->startPreviewChangingAnimation([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$10;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$10;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$500(Lcom/sec/android/app/camera/menu/VisualInteraction;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->completeWaitAsync()V

    return-void
.end method
