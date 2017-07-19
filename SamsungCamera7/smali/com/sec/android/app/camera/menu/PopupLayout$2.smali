.class Lcom/sec/android/app/camera/menu/PopupLayout$2;
.super Ljava/lang/Object;
.source "PopupLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/PopupLayout;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/PopupLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/PopupLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/PopupLayout$2;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/PopupLayout$2;->this$0:Lcom/sec/android/app/camera/menu/PopupLayout;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PopupLayout;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    return-void
.end method
