.class public final Lorg/apache/harmony/security/provider/crypto/CryptoProvider;
.super Ljava/security/Provider;
.source "CryptoProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x6ee674ab6c76830eL


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "Crypto"

    const-string/jumbo v1, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "SecureRandom.SHA1PRNG"

    const-string/jumbo v1, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string/jumbo v1, "Software"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
