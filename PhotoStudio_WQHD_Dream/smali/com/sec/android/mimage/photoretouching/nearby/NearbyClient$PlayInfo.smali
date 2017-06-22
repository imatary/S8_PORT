.class Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayInfo;
.super Ljava/lang/Object;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayInfo"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public viewer:Lcom/samsung/android/allshare/media/ImageViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/allshare/media/ImageViewer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/nearby/NearbyClient$PlayInfo;->filePath:Ljava/lang/String;

    return-void
.end method
