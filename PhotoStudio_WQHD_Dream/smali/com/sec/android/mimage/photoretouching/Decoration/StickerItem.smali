.class public Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;
.super Ljava/lang/Object;
.source "StickerItem.java"


# instance fields
.field initOrder:I

.field isGif:Z

.field itemRes:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->initOrder:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->itemRes:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif:Z

    return-void
.end method


# virtual methods
.method public getItemRes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->itemRes:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getinitOrder()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->initOrder:I

    return v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StickerItem{initOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->initOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemRes=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->itemRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerItem;->isGif:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
