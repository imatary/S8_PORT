.class public Lcom/sec/ims/profile/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/ProfileData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/ims/profile/ProfileData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContentValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/profile/ProfileData$1;

    invoke-direct {v0}, Lcom/sec/ims/profile/ProfileData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/profile/ProfileData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    iget-object v1, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProfileData mime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mimetype"

    invoke-virtual {p0, v2}, Lcom/sec/ims/profile/ProfileData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "empty photoData"

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/profile/ProfileData;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
