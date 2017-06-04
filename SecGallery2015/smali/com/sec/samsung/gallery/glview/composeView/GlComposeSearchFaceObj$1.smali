.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$1;
.super Ljava/lang/Object;
.source "GlComposeSearchFaceObj.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSearchFaceObj;->processClick()Z

    move-result v0

    return v0
.end method
