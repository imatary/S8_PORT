.class public Lcom/sec/samsung/gallery/lib/factory/MultiSimManagerWrapper;
.super Ljava/lang/Object;
.source "MultiSimManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInsertedSimCount()I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/se/SeMultiSimManager;->getInsertedSimCount()I

    move-result v0

    return v0
.end method

.method public static getSimSlotCount()I
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/lib/se/SeMultiSimManager;->getSimSlotCount()I

    move-result v0

    return v0
.end method
