.class public Lcom/amap/api/maps2d/model/TextOptions;
.super Ljava/lang/Object;
.source "TextOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Typeface;

.field private c:Z

.field private d:F

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/TextOptions;->CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return-void
.end method


# virtual methods
.method public align(II)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    iput p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return-object p0
.end method

.method public backgroundColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fontColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    return-object p0
.end method

.method public fontSize(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    return-object p0
.end method

.method public position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public rotate(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    return-object p0
.end method

.method public setObject(Ljava/lang/Object;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "lat"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "lng"

    iget-object v2, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "obj"

    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    return-object p0
.end method
