# Artifact for "Bob DyLean: A Framework for the Symbolic Analysis of Cryptographic Protocols in Lean"

## Functions, types, and theorems from the paper

Section 2.2: Symbolic Bytes and Equational Theories

- [datatype a la carte](DY/ALaCarte/Basic.lean)
- [Sign constructor](DY/EquationalTheory/Sign.lean#L66)
- [verify smart constructor](DY/EquationalTheory/Sign.lean#L125)
- [normalization soundness theorems and proofs](DY/Bytes/NormalizationMetaTheory.lean)

Section 2.3: Trace Entries and State Transitions

- [Traceful definition](DY/Trace/Monad.lean#L9)
- [sending message](DY/Actions/Network.lean#L22)
- [receiving message](DY/Actions/Network.lean#L28)
- [random generation](DY/Actions/Random.lean#L202)

Section 2.4: Attacker Knowledge

- [base attacker knowledge](DY/Trace/BaseAttackerKnowledge.lean#L93)
- [base attacker knowledge for network](DY/Actions/Network.lean#L18)
- [attacker knowledge](DY/Bytes/AttackerKnowledge.lean#L174)
- [attacker knowledge definition for vk](DY/EquationalTheory/Sign.lean#L145)

Section 2.5: Transition System and Reachable Traces

- [transition system definition](DY/Trace/Reachability.lean#L11)
- [transition for sending message](DY/Actions/Network.lean#L169)
- [reachability definition](DY/Trace/Reachability.lean#L77)

Section 2.6: Framework for Modular Semantics

For execution trace entries:
- [component type](DY/Trace/Basic.lean#L302)
- [parameterless typeclass](DY/Trace/Basic.lean#L301)
- [combination function](DY/Trace/Basic.lean#L364)
- [inclusion relation](DY/Trace/Basic.lean#L312)
- [inclusion relation step](DY/Trace/Basic.lean#L316)
- [inclusion relation is reflexive](DY/Trace/Basic.lean#L322)
- [inclusion relation is transitive](DY/Trace/Basic.lean#L328)
- [inclusion relation with combine](DY/Trace/Basic.lean#L369)

Section 3.2: Proof trace and trace invariant

- [proof trace](DY/Trace/Invariant.lean#L35)
- [trace invariant](DY/Trace/Invariant.lean#L335)
- [hoare triple](DY/Trace/Manipulation.lean#L48)
- [hoare triple for sending message](DY/Actions/Network.lean#L121)
- [hoare triple for receiving message](DY/Actions/Network.lean#L141)
- [hoare triple for random generation](DY/Actions/Random.lean#L218)

Section 3.3: The key reachability theorem

- [reachability theorem](DY/Trace/ReachabilityTheorem.lean#L34)

Section 3.4: The key attacker knowledge theorem

- [attacker knowledge theorem](DY/Bytes/AttackerKnowledgeTheorem.lean#L65)

Section 4.1: DyLean on simple key exchanges

- [protocol flow](Examples/SignedDH/Specification.lean#L244)
- [security theorem 1](Examples/SignedDH/SecurityTheorems.lean#L13)
- [security theorem 2](Examples/SignedDH/SecurityTheorems.lean#L39)
- [sanity check 1](Examples/SignedDH/SanityChecks.lean#L22)
- [sanity check 2](Examples/SignedDH/SanityChecks.lean#L97)
- [sanity check 3](Examples/SignedDH/SanityChecks.lean#L212)

Section 4.2: DyLean and complex datastructures

- [protocol flow](Examples/MerkleTree/Specification.lean#L443)
- [security theorem](Examples/MerkleTree/SecurityTheorems.lean#L12)
- [sanity check 1](Examples/MerkleTree/SanityChecks.lean#L24)
- [sanity check 2](Examples/MerkleTree/SanityChecks.lean#L131)

Section 4.3: DyLean on looping protocols

- [protocol flow](Examples/Ratchet/Specification.lean#L286)
- [security theorem 1](Examples/Ratchet/SecurityTheorems.lean#L13)
- [security theorem 2](Examples/Ratchet/SecurityTheorems.lean#L147)
- [security theorem 3](Examples/Ratchet/SecurityTheorems.lean#L174)
- [security theorem 4](Examples/Ratchet/SecurityTheorems.lean#L202)
- [security theorem 5](Examples/Ratchet/SecurityTheorems.lean#L253)
- [sanity check 1](Examples/Ratchet/SanityChecks.lean#L30)
- [sanity check 2](Examples/Ratchet/SanityChecks.lean#L152)
- [sanity check 3](Examples/Ratchet/SanityChecks.lean#L246)
- [sanity check 4](Examples/Ratchet/SanityChecks.lean#L373)

Section 4.4: DyLean and custom equational theories

- [protocol flow](Examples/ACME/Specification.lean#L239)
- [security theorem (without DEO)](Examples/ACME/WithoutDEO/SecurityTheorems.lean#L14)
- [sanity check (without DEO)](Examples/ACME/WithoutDEO/SanityChecks.lean#L12)
- [attack (with DEO)](Examples/ACME/WithDEO/Attack.lean#L13)

Section 4.5: DyLean and custom threat models

- [protocol flow](Examples/SignedDHKEM/Specification.lean#L307)
- [security theorem 1](Examples/SignedDHKEM/SecurityTheorems.lean#L13)
- [security theorem 2](Examples/SignedDHKEM/SecurityTheorems.lean#L42)
- [sanity check 1](Examples/SignedDHKEM/SanityChecks.lean#L34)
- [sanity check 2](Examples/SignedDHKEM/SanityChecks.lean#L109)
- [sanity check 3](Examples/SignedDHKEM/SanityChecks.lean#L272)

## Build

There are two ways to build this artifact, which were tested on x86_64 computers.

### Using elan

If Lean is installed on your system,
in particular its version manager `elan`,
`lake` will automatically fetch the correct Lean version.

    # This command will verify proofs of DyLean and case studies
    lake build

### Using docker

Otherwise, we provide a docker image that contains `elan`.

    # Build the docker image. This will download the correct Lean version
    docker build . -t bobdylean
    # Start the image and start a shell with correct environment
    docker run -it bobdylean

    # This command will verify proofs of DyLean and case studies
    lake build
