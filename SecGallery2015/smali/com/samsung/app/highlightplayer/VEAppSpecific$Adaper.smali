.class Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;
.super Ljava/lang/Object;
.source "VEAppSpecific.java"

# interfaces
.implements Lcom/sec/android/app/ve/VEAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/VEAppSpecific;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adaper"
.end annotation


# instance fields
.field private mLoadingIcon:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;->mLoadingIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/app/highlightplayer/VEAppSpecific$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/app/highlightplayer/VEAppSpecific$Adaper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIconResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
