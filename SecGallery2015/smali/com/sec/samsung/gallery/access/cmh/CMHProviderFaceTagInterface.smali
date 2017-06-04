.class public interface abstract Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;
.super Ljava/lang/Object;
.source "CMHProviderFaceTagInterface.java"

# interfaces
.implements Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface$IFaceColumns;,
        Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface$IPersonsColumns;
    }
.end annotation


# static fields
.field public static final ENCODED_PATH_FACES_VIEW:Ljava/lang/String; = "facesview"

.field public static final EXTERNAL_TABLE_NAME:Ljava/lang/String; = "external"

.field public static final EXTERNAL_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_TABLE_NAME:Ljava/lang/String; = "faces"

.field public static final FACES_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_VIEW_URI:Landroid/net/Uri;

.field public static final INTERNAL_TABLE_NAME:Ljava/lang/String; = "internal"

.field public static final INTERNAL_TABLE_URI:Landroid/net/Uri;

.field public static final PERSONS_TABLE_NAME:Ljava/lang/String; = "persons"

.field public static final PERSONS_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "internal"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->INTERNAL_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "external"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->EXTERNAL_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->EXTERNAL_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v1, "faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->INTERNAL_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v1, "persons"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "facesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    return-void
.end method
