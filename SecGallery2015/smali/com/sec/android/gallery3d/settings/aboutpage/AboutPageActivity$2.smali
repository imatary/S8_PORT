.class Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;
.super Landroid/os/Handler;
.source "AboutPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->access$100(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->access$200(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->access$300(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;Z)V

    goto :goto_0
.end method
