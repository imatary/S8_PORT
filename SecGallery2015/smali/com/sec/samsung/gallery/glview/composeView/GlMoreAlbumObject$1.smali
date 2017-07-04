.class Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$1;
.super Ljava/lang/Object;
.source "GlMoreAlbumObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 2

    const-string/jumbo v0, "101"

    const-string/jumbo v1, "1101"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;)V

    const/4 v0, 0x1

    return v0
.end method
