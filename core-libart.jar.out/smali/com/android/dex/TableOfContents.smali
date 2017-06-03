.class public final Lcom/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/TableOfContents$Section;
    }
.end annotation


# instance fields
.field public final annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

.field public apiLevel:I

.field public checksum:I

.field public final classDatas:Lcom/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/android/dex/TableOfContents$Section;

.field public final codes:Lcom/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v3}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v4}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v5}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    invoke-direct {v0, v6}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1001

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1002

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x1003

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2001

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2002

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2003

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2004

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2005

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x2006

    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/dex/TableOfContents$Section;

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/android/dex/TableOfContents$Section;
    .locals 5

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-short v4, v0, Lcom/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such map item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeader(Lcom/android/dex/Dex$Section;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v2}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->apiLevel:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->checksum:I

    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    const/16 v3, 0x70

    if-eq v1, v3, :cond_1

    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected header: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    const v3, 0x12345678

    if-eq v0, v3, :cond_2

    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected endian tag: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v3, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/dex/DexException;

    const-string/jumbo v4, "Cannot merge dex files that do not contain a map"

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    return-void
.end method

.method private readMap(Lcom/android/dex/Dex$Section;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v6

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    invoke-direct {p0, v6}, Lcom/android/dex/TableOfContents;->getSection(S)Lcom/android/dex/TableOfContents$Section;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    if-eqz v7, :cond_1

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    if-eq v7, v5, :cond_1

    :cond_0
    new-instance v7, Lcom/android/dex/DexException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected map value for 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-ne v7, v2, :cond_0

    :cond_2
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    iput v2, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eqz v3, :cond_3

    iget v7, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    iget v8, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-le v7, v8, :cond_3

    new-instance v7, Lcom/android/dex/DexException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Map is unsorted at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    move-object v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 6

    iget v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    iget v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    aget-object v2, v3, v1

    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    if-le v3, v0, :cond_1

    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Map is unsorted at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    sub-int v3, v0, v3

    iput v3, v2, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    iget v0, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public readFrom(Lcom/android/dex/Dex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readHeader(Lcom/android/dex/Dex$Section;)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readMap(Lcom/android/dex/Dex$Section;)V

    invoke-virtual {p0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    return-void
.end method

.method public writeHeader(Lcom/android/dex/Dex$Section;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    const v0, 0x12345678

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v0, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeMap(Lcom/android/dex/Dex$Section;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v4, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-short v6, v1, Lcom/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
