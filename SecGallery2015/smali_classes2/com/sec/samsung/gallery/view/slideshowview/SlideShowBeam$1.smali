.class Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam$1;
.super Ljava/lang/Object;
.source "SlideShowBeam.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$OnGetFilePathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;->setBeamListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetFilePath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "SlideShowBeam"

    const-string/jumbo v1, "onGetFilePath(). Return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
