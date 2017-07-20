.class public Lcom/sec/ims/IMSParameter;
.super Ljava/lang/Object;
.source "IMSParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSParameter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/IMSParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

.field private mPrimitiveMap:Landroid/os/Bundle;

.field private mProfileParams:[Lcom/sec/ims/IMSProfileParams;

.field private mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/IMSParameter$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSParameter$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    iput-object v1, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    iput-object v1, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    iput-object v3, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    iput-object v3, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    iput-object v3, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IMSAPCSInfo;

    iput-object v2, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IMSRegistrationInfo;

    iput-object v2, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    new-array v2, v1, [Lcom/sec/ims/IMSProfileParams;

    iput-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    const-class v2, Lcom/sec/ims/IMSProfileParams;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IMSProfileParams;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
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

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mPrimitiveMap:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mAPCSInfo:Lcom/sec/ims/IMSAPCSInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mRegistrationInfo:Lcom/sec/ims/IMSRegistrationInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/sec/ims/IMSParameter;->mProfileParams:[Lcom/sec/ims/IMSProfileParams;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
