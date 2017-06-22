.class Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$1;
.super Ljava/lang/Object;
.source "AgifMyButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->onkey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->playPausesubscriber:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;->pauseAgif()V

    return-void
.end method
