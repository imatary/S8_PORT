.class final Landroid/icu/impl/ICUBinary$PackageDataFile;
.super Landroid/icu/impl/ICUBinary$DataFile;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageDataFile"
.end annotation


# instance fields
.field private final pkgBytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/ICUBinary$DatPackageReader;->addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$PackageDataFile;->pkgBytes:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Landroid/icu/impl/ICUBinary$DatPackageReader;->getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
