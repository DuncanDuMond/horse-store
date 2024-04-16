INFO:Detectors:
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) has bitwise-xor operator ^ instead of the exponentiation operator **: 
         - inverse = (3 * denominator) ^ 2 (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#184)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-exponentiation
INFO:Detectors:
HorseStore is re-used:
        - HorseStore (src/horseStoreV1/HorseStore.sol#4-16)
        - HorseStore (src/horseStoreV2/HorseStore.sol#12-49)
IHorseStore is re-used:
        - IHorseStore (src/horseStoreV1/IHorseStore.sol#4-7)
        - IHorseStore (src/horseStoreV2/IHorseStore.sol#10-16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#name-reused
INFO:Detectors:
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse = (3 * denominator) ^ 2 (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#184)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#188)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#189)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#190)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#191)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#192)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - denominator = denominator / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#169)
        - inverse *= 2 - denominator * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#193)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) performs a multiplication on the result of a division:
        - prod0 = prod0 / twos (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#172)
        - result = prod0 * inverse (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#199)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#divide-before-multiply
INFO:Detectors:
HorseStore.isHappyHorse(uint256) (src/horseStoreV2/HorseStore.sol#43-48) uses timestamp for comparisons
        Dangerous comparisons:
        - horseIdToFedTimeStamp[horseId] <= block.timestamp - HORSE_HAPPY_IF_FED_WITHIN (src/horseStoreV2/HorseStore.sol#44)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
ERC721._checkOnERC721Received(address,address,uint256,bytes) (lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol#465-482) uses assembly
        - INLINE ASM (lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol#476-478)
Strings.toString(uint256) (lib/openzeppelin-contracts/contracts/utils/Strings.sol#24-44) uses assembly
        - INLINE ASM (lib/openzeppelin-contracts/contracts/utils/Strings.sol#30-32)
        - INLINE ASM (lib/openzeppelin-contracts/contracts/utils/Strings.sol#36-38)
Math.mulDiv(uint256,uint256,uint256) (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#123-202) uses assembly
        - INLINE ASM (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#130-133)
        - INLINE ASM (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#154-161)
        - INLINE ASM (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#167-176)
HorseStoreYul.updateHorseNumber(uint256) (src/horseStoreV1/HorseStoreYul.sol#9-14) uses assembly
        - INLINE ASM (src/horseStoreV1/HorseStoreYul.sol#11-13)
HorseStoreYul.readNumberOfHorses() (src/horseStoreV1/HorseStoreYul.sol#16-23) uses assembly
        - INLINE ASM (src/horseStoreV1/HorseStoreYul.sol#18-22)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
Different versions of Solidity are used:
        - Version used: ['0.8.20', '^0.8.20']
        - 0.8.20 (src/horseStoreV1/HorseStore.sol#2)
        - 0.8.20 (src/horseStoreV1/HorseStoreYul.sol#2)
        - 0.8.20 (src/horseStoreV1/IHorseStore.sol#2)
        - 0.8.20 (src/horseStoreV2/HorseStore.sol#2)
        - 0.8.20 (src/horseStoreV2/IHorseStore.sol#2)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#3)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/IERC721Enumerable.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/IERC721Metadata.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/Context.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/Strings.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#4)
        - ^0.8.20 (lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#4)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#different-pragma-directives-are-used
INFO:Detectors:
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/interfaces/draft-IERC6093.sol#3) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/IERC721Enumerable.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/token/ERC721/extensions/IERC721Metadata.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/Context.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/Strings.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/introspection/ERC165.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/math/Math.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version^0.8.20 (lib/openzeppelin-contracts/contracts/utils/math/SignedMath.sol#4) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version0.8.20 (src/horseStoreV1/HorseStore.sol#2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version0.8.20 (src/horseStoreV1/HorseStoreYul.sol#2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version0.8.20 (src/horseStoreV1/IHorseStore.sol#2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version0.8.20 (src/horseStoreV2/HorseStore.sol#2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
Pragma version0.8.20 (src/horseStoreV2/IHorseStore.sol#2) necessitates a version too recent to be trusted. Consider deploying with 0.8.18.
solc-0.8.20 is not recommended for deployment
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
HorseStore (src/horseStoreV1/HorseStore.sol#4-16) should inherit from IHorseStore (src/horseStoreV1/IHorseStore.sol#4-7)
HorseStoreYul (src/horseStoreV1/HorseStoreYul.sol#4-24) should inherit from IHorseStore (src/horseStoreV1/IHorseStore.sol#4-7)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-inheritance
INFO:Slither:. analyzed (20 contracts with 94 detectors), 39 result(s) found
