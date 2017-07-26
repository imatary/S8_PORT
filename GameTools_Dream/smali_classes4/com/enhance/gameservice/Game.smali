.class public Lcom/enhance/gameservice/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/enhance/gameservice/Game;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private brightness:I

.field private fps:I

.field private isDtsOn:I

.field private packageName:Ljava/lang/String;

.field private resolutionDefault:I

.field private resolutionPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/enhance/gameservice/Game$1;

    invoke-direct {v0}, Lcom/enhance/gameservice/Game$1;-><init>()V

    sput-object v0, Lcom/enhance/gameservice/Game;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/enhance/gameservice/Game;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/enhance/gameservice/Game$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/enhance/gameservice/Game;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    iput p3, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    iput p4, p0, Lcom/enhance/gameservice/Game;->fps:I

    iput p5, p0, Lcom/enhance/gameservice/Game;->brightness:I

    iput p6, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrightness()I
    .locals 1

    iget v0, p0, Lcom/enhance/gameservice/Game;->brightness:I

    return v0
.end method

.method public getFps()I
    .locals 1

    iget v0, p0, Lcom/enhance/gameservice/Game;->fps:I

    return v0
.end method

.method public getIsDtsOn()Z
    .locals 1

    iget v0, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionDefault()I
    .locals 1

    iget v0, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    return v0
.end method

.method public getResolutionPercent()I
    .locals 1

    iget v0, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/enhance/gameservice/Game;->fps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/enhance/gameservice/Game;->brightness:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    iput p1, p0, Lcom/enhance/gameservice/Game;->brightness:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    iput p1, p0, Lcom/enhance/gameservice/Game;->fps:I

    return-void
.end method

.method public setIsDtsOn(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setResolutionDefault(I)V
    .locals 0

    iput p1, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    return-void
.end method

.method public setResolutionPercent(I)V
    .locals 0

    iput p1, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Game ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/enhance/gameservice/Game;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/enhance/gameservice/Game;->brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/enhance/gameservice/Game;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/enhance/gameservice/Game;->resolutionDefault:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/enhance/gameservice/Game;->resolutionPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/enhance/gameservice/Game;->fps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/enhance/gameservice/Game;->brightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/enhance/gameservice/Game;->isDtsOn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
