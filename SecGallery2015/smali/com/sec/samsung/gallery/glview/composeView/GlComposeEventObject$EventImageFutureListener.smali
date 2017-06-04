.class abstract Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EventImageFutureListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field futureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    return-void
.end method
