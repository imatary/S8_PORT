.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;
.super Ljava/lang/Object;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Property"
.end annotation


# instance fields
.field public iEyeEnlargementLevel:I

.field public iSkinBrightLevel:I

.field public iSkinSoftenLevel:I

.field public iSlenderFaceLevel:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinSoftenLevel:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSkinBrightLevel:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iSlenderFaceLevel:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$Property;->iEyeEnlargementLevel:I

    return-void
.end method
