.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$1;
.super Ljava/lang/Object;
.source "GlComposeBaseAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    return-void
.end method
