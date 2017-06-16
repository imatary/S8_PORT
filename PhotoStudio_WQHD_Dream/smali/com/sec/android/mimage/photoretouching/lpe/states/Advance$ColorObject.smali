.class Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;
.super Ljava/lang/Object;
.source "Advance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Advance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorObject"
.end annotation


# instance fields
.field public hue:I

.field public lum:I

.field public sat:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->hue:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->sat:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ColorObject;->lum:I

    return-void
.end method
