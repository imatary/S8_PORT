.class public Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;
.super Landroid/util/SparseBooleanArray;
.source "SerializableBooleanSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v1, v2, [I

    new-array v3, v2, [Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v4, v1, v0

    aget-boolean v5, v3, v0

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 3

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->size()I

    move-result v3

    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->size()I

    move-result v3

    new-array v2, v3, [Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->valueAt(I)Z

    move-result v3

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SerializableBooleanSparseArray;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
