.class Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;
.super Ljava/lang/Object;
.source "ComposePhotoCoverObjectLoader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->getCoverItem()V

    return-void
.end method
