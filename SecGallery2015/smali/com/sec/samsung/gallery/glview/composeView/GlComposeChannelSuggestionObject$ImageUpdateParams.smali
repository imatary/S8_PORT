.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;
.super Ljava/lang/Object;
.source "GlComposeChannelSuggestionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageUpdateParams"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field imageObjectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$SuggestionImageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->imageObjectRef:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject$ImageUpdateParams;-><init>()V

    return-void
.end method
