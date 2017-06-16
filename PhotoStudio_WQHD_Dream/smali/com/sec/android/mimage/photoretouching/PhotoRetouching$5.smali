.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setRequestedOrientation(I)V

    goto :goto_0
.end method
