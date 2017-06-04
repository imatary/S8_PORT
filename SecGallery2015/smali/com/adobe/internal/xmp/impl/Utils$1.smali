.class final Lcom/adobe/internal/xmp/impl/Utils$1;
.super Ljava/util/HashSet;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/internal/xmp/impl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v0, "xmpDM:album"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:altTapeName"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:altTimecode"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:artist"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:cameraAngle"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:cameraLabel"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:cameraModel"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:cameraMove"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:client"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:comment"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:composer"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:director"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:directorPhotography"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:engineer"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:genre"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:good"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:instrument"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:logComment"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:projectName"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:releaseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:scene"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotDate"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotDay"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotLocation"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotName"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotNumber"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:shotSize"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:speakerPlacement"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:takeNumber"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:tapeName"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:trackNumber"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:videoAlphaMode"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "xmpDM:videoAlphaPremultipleColor"

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/Utils$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
