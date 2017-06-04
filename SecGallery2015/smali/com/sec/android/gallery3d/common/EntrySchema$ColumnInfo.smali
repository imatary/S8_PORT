.class final Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/common/EntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final fullText:Z

.field private final indexed:Z

.field private final name:Ljava/lang/String;

.field private final type:I

.field private final unique:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z

    iput-boolean p5, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    iput-object p6, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z

    return v0
.end method

.method private isId()Z
    .locals 2

    const-string/jumbo v0, "_id"

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
