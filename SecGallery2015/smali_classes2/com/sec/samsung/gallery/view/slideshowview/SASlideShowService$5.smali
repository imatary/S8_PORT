.class Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$5;
.super Ljava/lang/Object;
.source "SASlideShowService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService$5;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SASlideShowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
