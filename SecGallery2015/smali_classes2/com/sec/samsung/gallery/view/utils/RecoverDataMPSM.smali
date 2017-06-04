.class public Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;
.super Ljava/lang/Object;
.source "RecoverDataMPSM.java"


# instance fields
.field private mLat:Ljava/lang/Double;

.field private mLog:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->mLat:Ljava/lang/Double;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->mLog:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->mLat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLog()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->mLog:Ljava/lang/Double;

    return-object v0
.end method
