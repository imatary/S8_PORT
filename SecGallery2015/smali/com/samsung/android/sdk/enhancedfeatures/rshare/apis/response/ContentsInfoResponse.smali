.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
.super Ljava/lang/Object;
.source "ContentsInfoResponse.java"


# instance fields
.field private contentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentTokenMetaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;"
        }
    .end annotation
.end field

.field private contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;"
        }
    .end annotation
.end field

.field private lastTimeStamp:Ljava/lang/Long;

.field private toList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLastTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->lastTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getReceivedContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentTokenMetaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setLastTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->lastTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setReceivedContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentTokenMetaList:Ljava/util/ArrayList;

    return-void
.end method
