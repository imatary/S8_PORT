.class Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "SaveImageInBackgroundData.java"


# instance fields
.field appTitle:Ljava/lang/String;

.field context:Landroid/content/Context;

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field previewWidth:I

.field previewheight:I

.field result:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    return-void
.end method

.method clearImage()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/SaveImageInBackgroundData;->iconSize:I

    return-void
.end method
