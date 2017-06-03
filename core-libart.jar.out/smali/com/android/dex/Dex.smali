.class public final Lcom/android/dex/Dex;
.super Ljava/lang/Object;
.source "Dex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/Dex$ClassDefIterable;,
        Lcom/android/dex/Dex$ClassDefIterator;,
        Lcom/android/dex/Dex$FieldIdTable;,
        Lcom/android/dex/Dex$MethodIdTable;,
        Lcom/android/dex/Dex$ProtoIdTable;,
        Lcom/android/dex/Dex$Section;,
        Lcom/android/dex/Dex$StringTable;,
        Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;,
        Lcom/android/dex/Dex$TypeIndexToDescriptorTable;
    }
.end annotation


# static fields
.field private static final CHECKSUM_OFFSET:I = 0x8

.field private static final CHECKSUM_SIZE:I = 0x4

.field static final EMPTY_SHORT_ARRAY:[S

.field private static final SIGNATURE_OFFSET:I = 0xc

.field private static final SIGNATURE_SIZE:I = 0x14


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final fieldIds:Lcom/android/dex/Dex$FieldIdTable;

.field private final methodIds:Lcom/android/dex/Dex$MethodIdTable;

.field private nextSectionStart:I

.field private final protoIds:Lcom/android/dex/Dex$ProtoIdTable;

.field private final strings:Lcom/android/dex/Dex$StringTable;

.field private final tableOfContents:Lcom/android/dex/TableOfContents;

.field private final typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

.field private final typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;


# direct methods
.method static synthetic -get0(Lcom/android/dex/Dex;)Lcom/android/dex/Dex$StringTable;
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    return-object v0
.end method

.method static synthetic -wrap0(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/dex/Dex;->checkBounds(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/android/dex/Dex$StringTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    new-array v0, p1, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/dex/TableOfContents;

    invoke-direct {v2}, Lcom/android/dex/TableOfContents;-><init>()V

    iput-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    new-instance v2, Lcom/android/dex/Dex$StringTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    new-instance v2, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v2, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v2, Lcom/android/dex/Dex$ProtoIdTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    new-instance v2, Lcom/android/dex/Dex$FieldIdTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    new-instance v2, Lcom/android/dex/Dex$MethodIdTable;

    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    iput-object v2, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string/jumbo v2, "classes.dex"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected classes.dex in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown output extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/android/dex/Dex$StringTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    invoke-direct {p0, p1}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    new-instance v0, Lcom/android/dex/Dex$StringTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    iput-object p1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    invoke-virtual {v0, p0}, Lcom/android/dex/TableOfContents;->readFrom(Lcom/android/dex/Dex;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static checkBounds(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-lt p0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lcom/android/dex/Dex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x79

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    :cond_0
    new-instance v2, Lcom/android/dex/Dex;

    invoke-direct {v2, p0}, Lcom/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v2
.end method

.method private loadFrom(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x2000

    new-array v0, v3, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    invoke-virtual {v3, p0}, Lcom/android/dex/TableOfContents;->readFrom(Lcom/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public annotationDirectoryOffsetFromClassDefIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;
    .locals 5

    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Not four byte aligned!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    add-int v0, v3, p1

    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/android/dex/Dex$Section;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$Section;)V

    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    return-object v1
.end method

.method public classDefs()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/dex/Dex$ClassDefIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ClassDefIterable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ClassDefIterable;)V

    return-object v0
.end method

.method public computeChecksum()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v4, 0x2000

    new-array v1, v4, [B

    iget-object v4, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v3, v1, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v6, v2}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public computeSignature()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/16 v5, 0x2000

    new-array v0, v5, [B

    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    return-object v5
.end method

.method public declaringClassIndexFromMethodIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x8

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    return v1
.end method

.method public descriptorIndexFromTypeIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x4

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public fieldIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/FieldId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    return-object v0
.end method

.method public findClassDefIndexFromTypeIndex(I)I
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public findFieldIndex(Lcom/android/dex/FieldId;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public findMethodIndex(Lcom/android/dex/MethodId;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public findStringIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public findTypeIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 3

    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v1, v2, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getNextSectionStart()I
    .locals 1

    iget v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    return v0
.end method

.method public getTableOfContents()Lcom/android/dex/TableOfContents;
    .locals 1

    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    return-object v0
.end method

.method public interfaceTypeIndicesFromClassDefIndex(I)[S
    .locals 8

    iget-object v5, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v5, v5, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v5, v5, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v5}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v5, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v5, v5, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v5, v5, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v6, p1, 0x20

    add-int v2, v5, v6

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v5, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object v5

    :cond_0
    move v2, v1

    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-gtz v3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected interfaces list size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_1
    add-int/lit8 v2, v1, 0x4

    new-array v4, v3, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    aput-short v5, v4, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public methodIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/MethodId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    return-object v0
.end method

.method public nameIndexFromFieldIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x8

    add-int v0, v1, v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public nameIndexFromMethodIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x8

    add-int v0, v1, v2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public open(I)Lcom/android/dex/Dex$Section;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/android/dex/Dex$Section;

    const-string/jumbo v2, "section"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$Section;)V

    return-object v1
.end method

.method public parameterTypeIndicesFromMethodIndex(I)[S
    .locals 9

    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v6, v6, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v6}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v6, v6, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v7, p1, 0x8

    add-int v2, v6, v7

    add-int/lit8 v2, v2, 0x2

    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    const v7, 0xffff

    and-int v3, v6, v7

    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v6, v6, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {v3, v6}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v6, v6, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v7, v3, 0xc

    add-int v2, v6, v7

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v6, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object v6

    :cond_0
    move v2, v1

    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    if-gtz v4, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected parameter type list size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_1
    add-int/lit8 v2, v1, 0x4

    new-array v5, v4, [S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    aput-short v6, v5, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public protoIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/ProtoId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    return-object v0
.end method

.method public readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "offset == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dex/Dex$Section;->-wrap0(Lcom/android/dex/Dex$Section;)Lcom/android/dex/ClassData;

    move-result-object v1

    return-object v1
.end method

.method public readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;
    .locals 3

    invoke-virtual {p1}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "offset == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dex/Dex$Section;->-wrap1(Lcom/android/dex/Dex$Section;)Lcom/android/dex/Code;

    move-result-object v1

    return-object v1
.end method

.method public readTypeList(I)Lcom/android/dex/TypeList;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/dex/TypeList;->EMPTY:Lcom/android/dex/TypeList;

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readTypeList()Lcom/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public returnTypeIndexFromMethodIndex(I)I
    .locals 4

    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v2, v2, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v2}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v2, v2, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v3, p1, 0x8

    add-int v0, v2, v3

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const v3, 0xffff

    and-int v1, v2, v3

    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v2, v2, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {v1, v2}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v2, v2, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v3, v1, 0xc

    add-int v0, v2, v3

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    return v2
.end method

.method public strings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    return-object v0
.end method

.method public typeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    return-object v0
.end method

.method public typeIndexFromClassDefIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x20

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public typeIndexFromFieldIndex(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 v2, p1, 0x8

    add-int v0, v1, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    return v1
.end method

.method public typeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    return-object v0
.end method

.method public writeHashes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dex/Dex;->computeSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->write([B)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dex/Dex;->computeChecksum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeTo(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v3, 0x2000

    new-array v0, v3, [B

    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method
